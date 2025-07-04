import pandas as pd
from sqlalchemy import create_engine

# --- CONFIGURATION DES BASES DE DONNÉES ---
SILVER_CONN_STR = "postgresql://postgres:diarms@localhost:5432/silverDB"
GOLD_CONN_STR = "postgresql://postgres:diarms@localhost:5432/goldDB"

# --- ÉTAPE 1 : LECTURE DES DONNÉES LÉGÈRES DEPUIS SILVER ---
def read_from_silver():
    print("📥 Lecture des données depuis silverDB...")
    engine = create_engine(SILVER_CONN_STR)

    jobs = pd.read_sql('SELECT poste, domaine, entreprise, salaire_min, salaire_max, ville, source FROM "jobs_data"', engine)
    repos = pd.read_sql('SELECT language FROM "github_repos"', engine)
    trends = pd.read_sql('SELECT * FROM "googletrends"', engine)
    survey = pd.read_sql('SELECT * FROM "stack_survey_data"', engine)

    print("✅ Données chargées depuis silverDB.\n")
    return jobs, repos, trends, survey

# --- ÉTAPE 2 : CONSTRUCTION DES DATAMARTS ---
def build_datamarts(jobs, repos, trends, survey):
    print("🧠 Construction des datamarts...")

    # ✅ Datamart RH marché de l'emploi
    df = jobs.copy()
    df = df.dropna(subset=["salaire_min", "salaire_max", "ville", "domaine"])
    df["salaire_moyen"] = (df["salaire_min"] + df["salaire_max"]) / 2

    datamart_rh = (
        df.groupby(["ville", "domaine"])
        .agg(
            salaire_moyen=("salaire_moyen", "mean"),
            nombre_offres=("poste", "count"),
            sources=("source", lambda x: list(set(x)))
        )
        .reset_index()
    )
    datamart_rh["salaire_moyen"] = datamart_rh["salaire_moyen"].round()

    # ✅ Datamart Tech Popularity (directement intégré ici)
    multi_tech_columns = {
        'LanguageHaveWorkedWith': 'used',
        'LanguageWantToWorkWith': 'wanted',
        'ToolsTechHaveWorkedWith': 'used',
        'ToolsTechWantToWorkWith': 'wanted',
        'DatabaseHaveWorkedWith': 'used',
        'DatabaseWantToWorkWith': 'wanted',
    }

    all_tech_data = []
    for col, status in multi_tech_columns.items():
        temp = survey[['respondent_id', col]].dropna().copy()
        temp[col] = temp[col].str.split(';')
        temp = temp.explode(col)
        temp[col] = temp[col].str.strip()
        temp = temp.rename(columns={col: 'technology'})
        temp['status'] = status
        temp['tech_type'] = col.replace('HaveWorkedWith', '').replace('WantToWorkWith', '')
        all_tech_data.append(temp)

    tech_df = pd.concat(all_tech_data, ignore_index=True)
    datamart_tech_popularity = tech_df.groupby(['tech_type', 'technology', 'status']) \
                                      .agg(count=('respondent_id', 'count')) \
                                      .reset_index()


    # ✅ Datamart Diversité & Conditions
    diversity_mart = survey.groupby([
        'country', 'Gender', 'Ethnicity', 'MentalHealth', 'Accessibility',
        'RemoteWork', 'survey_year'
    ]).agg(
        count_respondents=('respondent_id', 'count'),
        avg_salary=('salary_eur', 'mean'),
        remote_ratio=('RemoteWork', lambda x: (x == 'Remote').mean())
    ).reset_index()

    print("✅ Datamarts construits.\n")

    return {
        'datamart_rh_market': datamart_rh,
        'datamart_tech_popularity': datamart_tech_popularity,
        'datamart_diversity_conditions': diversity_mart
    }


# --- ÉTAPE 3 : ÉCRITURE DES DATAMARTS ---
def write_to_gold(datamarts):
    print("📤 Écriture dans goldDB...")
    engine = create_engine(GOLD_CONN_STR)

    for name, df in datamarts.items():
        df.to_sql(name, engine, if_exists='replace', index=False)
        print(f"✅ {name} écrit avec succès ({len(df)} lignes)")

    print("🏁 Tous les datamarts ont été insérés.\n")

# --- PIPELINE COMPLET ---
def main():
    jobs, repos, trends, survey = read_from_silver()
    datamarts = build_datamarts(jobs, repos, trends, survey)
    write_to_gold(datamarts)

if __name__ == "__main__":
    main()
