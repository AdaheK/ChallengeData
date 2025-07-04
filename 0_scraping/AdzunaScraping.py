import os
import time
import json
import requests
from pathlib import Path
from datetime import datetime

# Identifiants Adzuna
APP_ID = "ad05a10a"
APP_KEY = "ae2c8b577582e4886e53818ffa4e8146"

# Dossier de sortie
RAW_DIR = Path("raw/adzuna/")
RAW_DIR.mkdir(parents=True, exist_ok=True)

# Pays ciblé
COUNTRY_ISO = "fr"

# Profils Tech à rechercher
TECH_JOBS = [
    "data","developpeur","cybersécurité"
]

CATEGORY = "IT-Jobs"
RESULTS_PER_PAGE = 50
MAX_PAGES = 10

# 🔁 Reverse geocoding simplifié via Nominatim
def get_location_from_coords(lat, lon):
    try:
        url = f"https://nominatim.openstreetmap.org/reverse"
        params = {
            "format": "json",
            "lat": lat,
            "lon": lon,
            "zoom": 10,
            "addressdetails": 1
        }
        headers = {"User-Agent": "AdzunaScraper/1.0"}
        r = requests.get(url, params=params, headers=headers)
        r.raise_for_status()
        data = r.json()
        return data.get("display_name")
    except:
        return None


# 📥 Récupération des offres
def fetch_jobs(keyword):
    cleaned_results = []
    for page in range(1, MAX_PAGES + 1):
        url = f"https://api.adzuna.com/v1/api/jobs/{COUNTRY_ISO}/search/{page}"
        params = {
            "app_id": APP_ID,
            "app_key": APP_KEY,
            "results_per_page": RESULTS_PER_PAGE,
            "what": keyword,
            "category": CATEGORY,
            "where": "France",  # pas de ville spécifique
            "content-type": "application/json"
        }

        try:
            response = requests.get(url, params=params)
            if response.status_code == 200:
                data = response.json()
                offers = data.get("results", [])
                print(f"[INFO] France | {keyword} | page {page} | {len(offers)} jobs")

                for offer in offers:
                    lat = offer.get("latitude")
                    lon = offer.get("longitude")
                    localisation = get_location_from_coords(lat, lon) if lat and lon else None

                    job = {
                        "titre": offer.get("title"),
                        "entreprise": offer.get("company", {}).get("display_name"),
                        "salaire_min": offer.get("salary_min"),
                        "salaire_max": offer.get("salary_max"),
                        "localisation": localisation,
                        "source": "Adzuna"
                    }
                    cleaned_results.append(job)
            else:
                print(f"[ERROR] France | {keyword} | page {page} | status {response.status_code}")
                break

        except Exception as e:
            print(f"[EXCEPTION] France | {keyword} | page {page} → {e}")
            break

        time.sleep(1.0)
    return cleaned_results


# 🚀 Script principal
def main():
    print(f"[START] Scraping Adzuna API | {datetime.now().isoformat()}")

    for keyword in TECH_JOBS:
        clean_kw = keyword.replace(" ", "_").lower()
        filename = f"adzuna_fr_{clean_kw}_france.json"
        path = RAW_DIR / filename

        jobs = fetch_jobs(keyword)

        with open(path, "w", encoding="utf-8") as f:
            json.dump(jobs, f, ensure_ascii=False, indent=2)

        print(f"[SAVE] {len(jobs)} offres sauvegardées -> {path}")

    print(f"[END] Scraping terminé | {datetime.now().isoformat()}")


if __name__ == "__main__":
    main()
