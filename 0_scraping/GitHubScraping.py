import requests
import time
import json
from pathlib import Path
from datetime import datetime, timedelta

# 🔐 Ton token GitHub
GITHUB_TOKEN = "ghp_XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

# ✅ Technologies élargies
TECH_KEYWORDS = [
    "software engineer", "developer", "frontend", "backend", "full stack",
    "devops", "data engineer", "data scientist", "machine learning", "python", "java", "react", "cloud"
]

# 📁 Dossier de sortie
OUT_DIR = Path("raw/github/")
OUT_DIR.mkdir(parents=True, exist_ok=True)

# ⚙️ Configuration API
HEADERS = {
    "Authorization": f"token {GITHUB_TOKEN}",
    "Accept": "application/vnd.github+json"
}

# 📆 Repos récents (12 mois)
since_date = (datetime.utcnow() - timedelta(days=365)).strftime('%Y-%m-%d')

# 🧠 Cache pour éviter appels multiples
USER_CACHE = {}

def fetch_user_location(username):
    if username in USER_CACHE:
        return USER_CACHE[username]

    try:
        user_url = f"https://api.github.com/users/{username}"
        r = requests.get(user_url, headers=HEADERS)
        r.raise_for_status()
        location = r.json().get("location")
        USER_CACHE[username] = location
        time.sleep(0.5)  # éviter rate limit
        return location
    except Exception as e:
        print(f"[ERREUR] Localisation pour {username} : {e}")
        return None

def fetch_repos_for_keyword(keyword):
    all_items = []
    per_page = 50
    max_pages = 3

    for page in range(1, max_pages + 1):
        query = f"{keyword} in:name,description,readme created:>{since_date}"
        url = "https://api.github.com/search/repositories"
        params = {
            "q": query,
            "sort": "stars",
            "order": "desc",
            "per_page": per_page,
            "page": page,
            "source": "GitHub"
        }

        try:
            response = requests.get(url, headers=HEADERS, params=params)
            response.raise_for_status()
            data = response.json()
            items = data.get("items", [])

            for item in items:
                username = item.get("owner", {}).get("login")
                location = fetch_user_location(username) if username else None
                repo_info = {
                    "name": item.get("full_name"),
                    "language": item.get("language"),
                    "stars": item.get("stargazers_count"),
                    "url": item.get("html_url"),
                    "owner": username,
                    "location": location
                }
                all_items.append(repo_info)

            print(f"[INFO] {keyword} - page {page} -> {len(items)} repos")

        except Exception as e:
            print(f"[ERROR] {keyword} - page {page} -> {e}")
            break

        time.sleep(1.2)

    return all_items

def main():
    for tech in TECH_KEYWORDS:
        clean_name = tech.lower().replace(" ", "_")
        print(f"\n🔎 Collecte des dépôts pour : {tech}")
        repos = fetch_repos_for_keyword(tech)

        out_path = OUT_DIR / f"github_repos_{clean_name}.json"
        with open(out_path, "w", encoding="utf-8") as f:
            json.dump(repos, f, indent=2, ensure_ascii=False)
        print(f"[✅] {len(repos)} dépôts sauvegardés -> {out_path}")

if __name__ == "__main__":
    main()
