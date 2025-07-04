import subprocess

import os
 
def run_scraping():

    print("\n📦 Lancement des scripts de scraping...")

    scripts = [

        "0_scraping/AdzunaScraping.py",

        "0_scraping/GitHubScraping.py",

        "0_scraping/GlassdoorScraping.py",

        "0_scraping/GoogleTrendsScraping.py",

        "0_scraping/StackOverflowScraping.py",

        "0_scraping/MeteoJobScraping.py"

    ]

    for script in scripts:

        print(f"🔍 Exécution : {script}")

        result = subprocess.run(["python", script], capture_output=True, text=True)

        print(result.stdout)

        if result.returncode != 0:

            print("❌ Erreur dans le script :", result.stderr)

            return False

    return True
 
def run_cleaning():

    print("\n🧹 Nettoyage & Transformation vers SilverDB...")

    scripts = [

        "1_silver/silver_github.py",

        "1_silver/silver_googletrends.py",

        "1_silver/silver_job_offers.py",

        "1_silver/silver_stackoverflow.py",

    ]

    for script in scripts:

        print(f"🔧 Exécution : {script}")

        result = subprocess.run(["python", script], capture_output=True, text=True)

        print(result.stdout)

        if result.returncode != 0:

            print("❌ Erreur dans le script :", result.stderr)

            return False
    return True


def run_datamarts():

    print("\n🏗️ Création des datamarts vers GoldDB...")

    result = subprocess.run(["python", "2_gold/build_datamarts.py"], capture_output=True, text=True)

    print(result.stdout)

    return result.returncode == 0
 
def run_api():

    print("\n🌐 Lancement du serveur Django REST API...")

    os.system("python manage.py runserver")
 
def main():

    print("🚀 Orchestration complète de la pipeline de données\n")
 
    if not run_scraping():

        print("🛑 Échec du scraping. Orchestration arrêtée.")

        return
 
    if not run_cleaning():

        print("🛑 Échec du nettoyage. Orchestration arrêtée.")

        return
 
    if not run_datamarts():

        print("🛑 Échec de la génération des datamarts. Orchestration arrêtée.")

        return
 
    run_api()
 
if __name__ == "__main__":

    main()

 