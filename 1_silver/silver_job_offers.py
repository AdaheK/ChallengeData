import pandas as pd
import re
import json
from sqlalchemy import create_engine

# Configuration PostgreSQL
DB_URI = "postgresql://postgres:diarms@localhost:5432/silverDB"
engine = create_engine(DB_URI)

### --- UTILS ---

def convertir_salaire(val):
    if pd.isna(val):
        return None
    if val < 1000:
        return val * 220  # journalier
    elif val < 6000:
        return val * 12   # mensuel
    else:
        return val        # annuel déjà

def clean_poste(poste):
    if not isinstance(poste, str):
        return poste
    poste = re.sub(r"\b(H/F|F/H|H / F|F / H)\b", "", poste, flags=re.IGNORECASE)
    poste = re.sub(r"\b(en alternance|alternance|en cdi|cdi|stage|intérim)\b", "", poste, flags=re.IGNORECASE)
    return poste.strip()

def detect_domaine(poste):
    if not isinstance(poste, str):
        return "autre"
    poste = poste.lower()
    if any(w in poste for w in ["data", "analyst", "scientist", "bi", "machine learning", "ml", "ai", "intelligence artificielle"]):
        return "data"
    elif any(w in poste for w in ["cyber", "sécurité", "security", "pentest", "ssi", "soc"]):
        return "cybersécurité"
    elif any(w in poste for w in ["développeur","developer", "java", "python", "node", "c++", "c#", "php", ".net", "frontend", "backend", "fullstack", "web"]):
        return "développement"
    elif any(w in poste for w in ["ux", "ui", "designer", "figma", "product designer"]):
        return "design"
    elif any(w in poste for w in ["product manager", "product owner", "scrum", "agile"]):
        return "gestion produit"
    elif any(w in poste for w in ["infra", "système", "réseau", "admin", "devops", "cloud", "docker", "kubernetes"]):
        return "infra"
    elif any(w in poste for w in ["support", "helpdesk", "technicien", "maintenance"]):
        return "support"
    elif any(w in poste for w in ["commercial", "business developer", "teleprospecteur", "account manager"]):
        return "commerce"
    elif any(w in poste for w in ["marketing", "seo", "communication", "brand", "growth"]):
        return "marketing"
    else:
        return "autre"

def extract_salaire_meteojob(s):
    if pd.isna(s) or 'non renseigné' in str(s).lower():
        return None, None
    match = re.findall(r'\d[\d\s]*', s.replace('\xa0', ' '))
    if len(match) >= 2:
        return int(match[0].replace(' ', '')), int(match[1].replace(' ', ''))
    return None, None

def extract_salaire_k(s):
    if pd.isna(s) or 'non renseigné' in str(s).lower():
        return None, None
    match = re.findall(r'(\d+)\s*k', s.lower())
    if len(match) >= 2:
        return int(match[0]) * 1000, int(match[1]) * 1000
    elif len(match) == 1:
        return int(match[0]) * 1000, int(match[0]) * 1000
    return None, None

def load_adzuna(path):
    with open(path, encoding='utf-8') as f:
        return pd.DataFrame(json.load(f))

def main():
    ### --- CHARGEMENT ---

    df_meteojob = pd.read_csv("../raw/meteojob/offres_meteojob.csv")
    df_jobs_tous = pd.read_csv("../raw/GlassDoor/jobs_tous.csv")

    adzuna_paths = [
        "../raw/adzuna/adzuna_fr_developpeur_france.json",
        "../raw/adzuna/adzuna_fr_data_france.json",
        "../raw/adzuna/adzuna_fr_cybersécurité_france.json"
    ]
    df_adzuna = pd.concat([load_adzuna(p) for p in adzuna_paths], ignore_index=True)

    ### --- METEOJOB ---

    df_meteojob[['salaire_min', 'salaire_max']] = df_meteojob['Salaire'].apply(lambda s: pd.Series(extract_salaire_meteojob(s)))
    df_meteojob = df_meteojob.dropna(subset=['salaire_min', 'salaire_max'])
    df_meteojob = df_meteojob[df_meteojob['salaire_min'] <= df_meteojob['salaire_max']]

    df_meteojob['salaire_min'] = df_meteojob['salaire_min'].apply(convertir_salaire)
    df_meteojob['salaire_max'] = df_meteojob['salaire_max'].apply(convertir_salaire)

    df_meteojob['ville'] = df_meteojob['Localisation'].str.replace(r"\s*\(\d+\)", "", regex=True)
    df_meteojob['poste'] = df_meteojob['Poste'].apply(clean_poste)
    df_meteojob['domaine'] = df_meteojob['poste'].apply(detect_domaine)
    df_meteojob['entreprise'] = df_meteojob['Entreprise']
    df_meteojob['source'] = 'meteojob'

    df_meteojob_clean = df_meteojob[['poste', 'entreprise', 'salaire_min', 'salaire_max', 'ville', 'domaine', 'source']]

    ### --- GLASSDOOR ---

    df_jobs_tous[['salaire_min', 'salaire_max']] = df_jobs_tous['salaire'].apply(lambda s: pd.Series(extract_salaire_k(s)))
    df_jobs_tous = df_jobs_tous.dropna(subset=['salaire_min', 'salaire_max'])

    df_jobs_tous['salaire_min'] = df_jobs_tous['salaire_min'].apply(convertir_salaire)
    df_jobs_tous['salaire_max'] = df_jobs_tous['salaire_max'].apply(convertir_salaire)

    df_jobs_tous['poste'] = df_jobs_tous['poste'].apply(clean_poste)
    df_jobs_tous['domaine'] = df_jobs_tous['poste'].apply(detect_domaine)
    df_jobs_tous['ville'] = df_jobs_tous['lieu']
    df_jobs_tous['source'] = 'jobs_tous'

    df_jobs_tous_clean = df_jobs_tous[['poste', 'entreprise', 'salaire_min', 'salaire_max', 'ville', 'domaine', 'source']]

    ### --- ADZUNA ---

    df_adzuna = df_adzuna.dropna(subset=['salaire_min', 'salaire_max'])
    df_adzuna = df_adzuna[
        (df_adzuna['salaire_min'] >= 300) & (df_adzuna['salaire_max'] >= 300)
    ]

    df_adzuna['salaire_min'] = df_adzuna['salaire_min'].apply(convertir_salaire)
    df_adzuna['salaire_max'] = df_adzuna['salaire_max'].apply(convertir_salaire)

    df_adzuna['poste'] = df_adzuna['titre'].apply(clean_poste)
    df_adzuna['ville'] = df_adzuna['localisation'].dropna().apply(lambda x: x.split(",")[0] if isinstance(x, str) else x)
    df_adzuna['domaine'] = df_adzuna['poste'].apply(detect_domaine)
    df_adzuna['source'] = 'adzuna'

    df_adzuna_clean = df_adzuna[['poste', 'entreprise', 'salaire_min', 'salaire_max', 'ville', 'domaine', 'source']]

    ### --- CONCATÉNATION FINALE ---

    df_all = pd.concat([df_meteojob_clean, df_jobs_tous_clean, df_adzuna_clean], ignore_index=True)

    # 🛢️ Chargement PostgreSQL
    try:
        df_all.to_sql("jobs_data", engine, if_exists="replace", index=False)
        print("🚀 Données chargées avec succès dans la table `JobsData`.")
    except Exception as e:
        print(f"❌ Erreur lors du chargement dans PostgreSQL : {e}")


if __name__ == "__main__":
    main()
