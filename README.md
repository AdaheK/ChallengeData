# 📊 JobTech Data Lake
 
Un projet de data engineering visant à centraliser, structurer et exposer des données sur le marché de l'emploi tech, les tendances technologiques, et la diversité dans le secteur.
 
## 🚀 Objectifs
 
- Collecter des données issues de sources comme StackOverflow, Google Trends, GitHub, etc.
- Structurer ces données via un pipeline ETL (Bronze → Silver → Gold).
- Construire des datamarts thématiques (emploi, techno, diversité...).
- Exposer les données via une API Django REST sécurisée.
 
## 🛠️ Stack technique
 
- Python / Pandas
- PostgreSQL
- SQLAlchemy
- Django + Django REST Framework
- Docker (optionnel)
- GitHub Actions (optionnel)
- Git pour le versioning

# Crée un environnement
python -m venv venv
source venv/bin/activate  # ou venv\Scripts\activate sous Windows
 
# Installe les dépendances
pip install -r requirements.txt

## ▶️ Lancer le main.py

## Tester la route dans Postman
http://127.0.0.1:8000/api/salary/by-country-seniority/?country=France

