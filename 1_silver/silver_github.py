import json
from pathlib import Path
from sqlalchemy import create_engine, text

# Chemins
RAW_DIR = Path("../raw/github/")
EU_LOC_FILE = Path("eu_locations.json")

# Configuration PostgreSQL
DB_HOST = "localhost"
DB_PORT = 5432
DB_USER = "postgres"
DB_PASSWORD = "diarms"  
DB_NAME = "silverDB"  

DB_URI = f"postgresql+psycopg2://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/silverDB"
DB_URI_DB = f"postgresql+psycopg2://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}"

def load_eu_locations():
    with open(EU_LOC_FILE, encoding="utf-8") as f:
        return set(json.load(f))

def is_eu_location(location, eu_keywords):
    if not location:
        return False
    location = location.lower()
    return any(keyword in location for keyword in eu_keywords)

def create_database_and_table():

    # Connexion à la base créée
    engine_db = create_engine(DB_URI_DB)
    with engine_db.connect() as conn:
        conn.execute(text("""
            CREATE TABLE IF NOT EXISTS github_repos (
                name TEXT,
                language TEXT,
                url TEXT,
                owner TEXT,
                location TEXT
            );
        """))
    return engine_db

def insert_valid_repos(engine, eu_keywords):
    insert_sql = text("""
        INSERT INTO github_repos (name, language, url, owner, location)
        VALUES (:name, :language, :url, :owner, :location)
    """)

    with engine.begin() as conn:  # Gestion transactionnelle
        for file in RAW_DIR.glob("github_repos_*.json"):
            print(f"[INFO] Traitement de {file.name}")
            with open(file, encoding="utf-8") as f:
                data = json.load(f)

            valid_count = 0
            for repo in data:
                name = repo.get("name")
                lang = repo.get("language")
                url = repo.get("url")
                owner = repo.get("owner")
                location = repo.get("location")

                if not lang or not location:
                    continue
                if not is_eu_location(location, eu_keywords):
                    continue

                conn.execute(insert_sql, {
                    "name": name,
                    "language": lang,
                    "url": url,
                    "owner": owner,
                    "location": location
                })
                valid_count += 1

            print(f"[OK] {valid_count} dépôts insérés depuis {file.name}")

def main():
    eu_keywords = load_eu_locations()

    # Création DB et table
    engine = create_database_and_table()

    # Insertion des dépôts valides
    insert_valid_repos(engine, eu_keywords)

    engine.dispose()
    print("[DONE] Tous les dépôts valides ont été insérés dans PostgreSQL.")

if __name__ == "__main__":
    main()
