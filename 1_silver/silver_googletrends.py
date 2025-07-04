import pandas as pd
from pathlib import Path
from sqlalchemy import create_engine, text

# Répertoire source
RAW_DIR = Path("../raw/googletrends/")
DB_NAME = "silverDB"
TABLE_NAME = "googletrends"

# Config PostgreSQL
DB_HOST = "localhost"
DB_PORT = 5432
DB_USER = "postgres"
DB_PASSWORD = "diarms"
DB_URI = f"postgresql+psycopg2://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}"

def create_database_if_not_exists():
    # Connexion à postgres pour créer la base si besoin
    engine_master = create_engine(f"postgresql+psycopg2://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/silverDB")
    with engine_master.connect() as conn:
        conn.execution_options(isolation_level="AUTOCOMMIT").execute(
            text(f"CREATE DATABASE {DB_NAME} WITH ENCODING 'UTF8' TEMPLATE template0;")
        )
    engine_master.dispose()

def create_table_if_needed(engine, sample_df):
    with engine.begin() as conn:
        # On drop la table si existe pour repartir propre (optionnel)
        conn.execute(text(f"DROP TABLE IF EXISTS {TABLE_NAME}"))
        
        # Construire le SQL des colonnes
        columns_sql = []
        for col in sample_df.columns:
            if col == "country":
                columns_sql.append(f'"{col}" CHAR(2)')
            else:
                columns_sql.append(f'"{col}" TEXT')
        columns_sql_str = ",\n".join(columns_sql)

        create_sql = f"""
            CREATE TABLE {TABLE_NAME} (
                {columns_sql_str}
            );
        """
        conn.execute(text(create_sql))

def insert_df(engine, df):
    cols = list(df.columns)
    placeholders = ", ".join([f":{col}" for col in cols])
    insert_sql = text(f"""
        INSERT INTO {TABLE_NAME} ({', '.join(f'"{col}"' for col in cols)})
        VALUES ({placeholders})
    """)

    records = df.to_dict(orient="records")

    with engine.begin() as conn:
        conn.execute(insert_sql, records)

def main():
    # Créer la base si besoin (ignore erreur si existe)
    try:
        create_database_if_not_exists()
    except Exception as e:
        print(f"[INFO] La base {DB_NAME} existe probablement déjà. {e}")

    engine = create_engine(DB_URI)

    first_file = True
    for file in RAW_DIR.glob("trends_*.csv"):
        try:
            country = file.stem[-2:].lower()
            df = pd.read_csv(file)
            df.dropna(axis=1, how="all", inplace=True)
            df["country"] = country

            if first_file:
                create_table_if_needed(engine, df)
                first_file = False

            insert_df(engine, df)
            print(f"[OK] {file.name} : {df.shape[0]} lignes insérées.")
        except Exception as e:
            print(f"[ERROR] {file.name} : {e}")

    engine.dispose()
    print("[DONE] Tous les fichiers Google Trends ont été insérés dans la table unique.")

if __name__ == "__main__":
    main()
