import requests
from bs4 import BeautifulSoup
import pandas as pd
import time
import random
import os

def extract(page, keyword):
    headers = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36"
    }
    url = f"https://www.meteojob.com/jobs?page={page}&what={keyword}&where=Paris"
    r = requests.get(url, headers=headers)
    if r.status_code != 200:
        print(f"⚠️ Erreur {r.status_code} à la page {page} pour le mot-clé '{keyword}'")
        return None
    soup = BeautifulSoup(r.content, 'html.parser')
    return soup

def transform(soup, keyword):
    job_data = []

    divs = soup.find_all('li', class_='list-group-item')
    if not divs:
        return None

    for item in divs:
        poste = item.find('h2').text.strip() if item.find('h2') else None
        entreprise = item.find('p', class_='d-inline-block').text.strip() if item.find('p', class_='d-inline-block') else None

        salaire_tag = item.find('span', class_='cc-tag-primary-light')
        salaire = salaire_tag.text.strip() if salaire_tag else "Non renseigné"

        try:
            location_block = item.find(lambda tag: tag.name == "div" and tag.has_attr("id") and "job-locations" in tag["id"])
            location_spans = location_block.find_all("span") if location_block else []
            localisation = ", ".join([s.text.strip() for s in location_spans]) if location_spans else "Non renseigné"
        except:
            localisation = "Non renseigné"

        job_data.append({
            "Poste": poste,
            "Entreprise": entreprise,
            "Salaire": salaire,
            "Localisation": localisation,
            "Source": "MeteoJob"
        })

    return job_data

def scrape_meteojob(keywords):
    all_jobs = []

    for keyword in keywords:
        print(f"\n🔍 Recherche pour le mot-clé : {keyword}")
        page = 1
        while True:
            soup = extract(page, keyword)
            if not soup:
                break
            page_jobs = transform(soup, keyword)
            if not page_jobs:
                print(f"✅ Fin du scraping pour '{keyword}' à la page {page}.")
                break
            all_jobs.extend(page_jobs)
            print(f"✅ Page {page} récupérée pour '{keyword}'")
            page += 1
            time.sleep(random.uniform(1, 2))
    
    return all_jobs

def save_to_csv(jobs, output_path):
    os.makedirs(os.path.dirname(output_path), exist_ok=True)
    df = pd.DataFrame(jobs)
    df.to_csv(output_path, index=False)
    print(f"\n📄 Total : {len(df)} offres récupérées.")
    print(f"✅ Données sauvegardées dans '{output_path}'")

def main():
    keywords = ["data", "developpeur", "cybersécurité", "UX%20designer"]
    jobs = scrape_meteojob(keywords)
    save_to_csv(jobs, "raw/meteojob/offres_meteojob.csv")

if __name__ == "__main__":
    main()
