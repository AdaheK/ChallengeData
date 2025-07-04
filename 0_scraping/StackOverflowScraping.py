import requests
import zipfile
from io import BytesIO
from pathlib import Path
import shutil

# URLs directes vers les fichiers zip
SURVEY_URLS = {
    "2021": "https://survey.stackoverflow.co/datasets/stack-overflow-developer-survey-2021.zip",
    "2022": "https://survey.stackoverflow.co/datasets/stack-overflow-developer-survey-2022.zip",
    "2023": "https://survey.stackoverflow.co/datasets/stack-overflow-developer-survey-2023.zip"
}

# Dossier de sortie
OUT_DIR = Path("raw/stackoverflow/")
OUT_DIR.mkdir(parents=True, exist_ok=True)

def download_and_extract(year: str, url: str):
    try:
        print(f"[INFO] Téléchargement ZIP {year} depuis {url}")
        r = requests.get(url)
        r.raise_for_status()

        with zipfile.ZipFile(BytesIO(r.content)) as z:
            tmp_dir = OUT_DIR / f"tmp_{year}"
            tmp_dir.mkdir(exist_ok=True)

            z.extractall(tmp_dir)

            # Rechercher le bon fichier dans l'archive
            for f in tmp_dir.rglob("survey_results_public.csv"):
                dest_file = OUT_DIR / f"survey_{year}.csv"
                shutil.move(str(f), dest_file)
                print(f"[OK] {year} → {dest_file.name}")
                break
            else:
                print(f"[WARN] Aucun fichier 'survey_results_public.csv' trouvé pour {year}")

            shutil.rmtree(tmp_dir)

    except Exception as e:
        print(f"[ERROR] Erreur pour {year} : {e}")


def main():
    for year, url in SURVEY_URLS.items():
        download_and_extract(year, url)

if __name__ == "__main__":
    main()
