from pytrends.request import TrendReq
import pandas as pd
from pathlib import Path
import time

# Dossier de sortie
OUT_DIR = Path("../raw/googletrends/")

# Technologies à suivre
KEYWORDS = [
    "Python", "Java", "JavaScript", "TypeScript", "React", "Angular",
    "Node.js", "Django", "Flask", "Vue.js", "Docker", "Kubernetes",
    "AWS", "GCP", "Azure", "Go", "Rust", "SQL", "PostgreSQL"
]

# Pays ciblés (codes ISO Google Trends)
COUNTRIES = {
    "BE": "BE" # Belgique
}

# Initialisation pytrends
pytrends = TrendReq(hl="en-US", tz=0)

def fetch_country_trends(country_code, keywords):
    df_all = pd.DataFrame()

    # Google Trends accepte 5 mots max, on utilise des chunks de 3
    for i in range(0, len(keywords), 3):
        kw_chunk = keywords[i:i + 3]
        try:
            pytrends.build_payload(kw_chunk, cat=0, timeframe='today 12-m', geo=country_code, gprop='')
            df = pytrends.interest_over_time()
            if not df.empty:
                df = df.drop(columns=["isPartial"], errors='ignore')
                df_all = pd.concat([df_all, df], axis=1)
            else:
                print(f"[WARN] Données vides pour {country_code} - {kw_chunk}")
        except Exception as e:
            print(f"[ERROR] Echec pour {country_code} - {kw_chunk} : {e}")
        time.sleep(5.0)  # important : pause plus longue

    return df_all

def main():
    for country_name, iso_code in COUNTRIES.items():
        print(f"[INFO] Récupération des tendances pour {country_name}")
        df = fetch_country_trends(iso_code, KEYWORDS)
        if not df.empty:
            out_path = OUT_DIR / f"trends_{country_name.lower()}.csv"
            df.to_csv(out_path)
            print(f"[OK] Sauvegardé -> {out_path}")
        else:
            print(f"[WARN] Aucune donnée collectée pour {country_name}")

if __name__ == "__main__":
    main()
