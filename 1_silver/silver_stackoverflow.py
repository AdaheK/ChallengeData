import pandas as pd
import os
import glob
from sqlalchemy import create_engine

# --- CONFIGURATION ---
DB_URI = "postgresql://postgres:diarms@localhost:5432/silverDB"
engine = create_engine(DB_URI)

RAW_FOLDER = "../raw/stackoverflow/"
pattern = os.path.join(RAW_FOLDER, "survey_202*.csv")
files = glob.glob(pattern)
all_data = []

# --- CLASSIFICATION EXPERIENCE ---
def classify_experience(years):
    try:
        y = float(years)
        if y < 3:
            return "Junior"
        elif y < 6:
            return "Intermediate"
        elif y < 10:
            return "Senior"
        else:
            return "Expert"
    except:
        return "Unknown"

# --- DÉTECTION DOMAINE ---
def detect_domaine(poste):
    if not isinstance(poste, str):
        return "autre"
    poste = poste.lower()
    if any(w in poste for w in ["data", "analyst", "scientist", "bi", "machine learning", "ml", "ai", "intelligence artificielle"]):
        return "data"
    elif any(w in poste for w in ["cyber", "sécurité", "security", "pentest", "ssi", "soc"]):
        return "cybersécurité"
    elif any(w in poste for w in ["développeur", "developer", "java", "python", "node", "c++", "c#", "php", ".net", "frontend", "backend", "fullstack", "web"]):
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

# --- NETTOYAGE STRINGS ---
def clean_strings(df):
    for col in df.select_dtypes(include=['object']).columns:
        df[col] = df[col].apply(
            lambda x: x.encode('utf-8', 'ignore').decode('utf-8') if isinstance(x, str) else x
        )
    return df

# --- FICHIERS CSV ---
for file_path in files:
    filename = os.path.basename(file_path)
    year = filename.split("_")[1].split(".")[0]  # ex: 2023
    print(f"📄 Traitement de {filename}...")

    try:
        df = pd.read_csv(file_path, low_memory=False, encoding='utf-8')
    except UnicodeDecodeError:
        print(f"⚠️ UTF-8 échoué, tentative ISO pour {filename}...")
        try:
            df = pd.read_csv(file_path, low_memory=False, encoding='ISO-8859-1')
        except Exception as e:
            print(f"❌ Échec lecture {filename} : {e}")
            continue

    df = df.rename(columns={
        'ResponseId': 'respondent_id',
        'MainBranch': 'main_branch',
        'Country': 'country',
        'Employment': 'employment',
        'DevType': 'dev_type',
        'YearsCodePro': 'years_code_pro',
        'ConvertedCompYearly': 'salary_usd',
        'EdLevel': 'education_level',
        'LanguageHaveWorkedWith': 'tech_used_raw',
        'LanguageWantToWorkWith': 'tech_wanted_raw',
        'RemoteWork': 'RemoteWork',
        'Gender': 'Gender',
        'Ethnicity': 'Ethnicity',
        'MentalHealth': 'MentalHealth',
        'Accessibility': 'Accessibility'
    })

    # ✅ Colonnes utiles pour datamarts
    keep_cols = [
        'respondent_id', 'main_branch', 'employment', 'country', 'dev_type',
        'years_code_pro', 'salary_usd', 'education_level', 'tech_used_raw',
        'tech_wanted_raw', 'RemoteWork', 'Gender', 'Ethnicity',
        'MentalHealth', 'Accessibility'
    ]
    df = df[[col for col in keep_cols if col in df.columns]].copy()

    if df.empty or df['salary_usd'].isnull().all():
        print(f"⚠️ {filename} ignoré : aucune donnée exploitable.")
        continue

    # Nettoyage / Feature engineering
    df['years_code_pro'] = pd.to_numeric(df['years_code_pro'], errors='coerce')
    df['salary_usd'] = pd.to_numeric(df['salary_usd'], errors='coerce')
    df = df[df['salary_usd'].notnull()]  # garde lignes avec salaires valides

    df['seniority_level'] = df['years_code_pro'].apply(classify_experience)
    df['survey_year'] = int(year)
    df['is_high_income'] = df['salary_usd'] > df['salary_usd'].quantile(0.75)
    df['domaine'] = df['dev_type'].apply(detect_domaine)

    all_data.append(df)

# --- FUSION & EXPORT ---
if not all_data:
    print("❌ Aucun fichier exploitable trouvé.")
else:
    final_df = pd.concat(all_data, ignore_index=True)
    final_df = clean_strings(final_df)

    print(f"✅ {len(final_df)} lignes finales prêtes à être chargées.")

    try:
        final_df.to_sql("stack_survey_data", engine, if_exists="replace", index=False)
        print("🚀 Table `stack_survey_data` mise à jour dans silverDB.")
    except Exception as e:
        print(f"❌ Erreur d'insertion PostgreSQL : {e}")
