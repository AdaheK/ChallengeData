# api/views.py

from rest_framework.response import Response

from rest_framework.decorators import api_view

from rest_framework import status

from sqlalchemy import create_engine

import pandas as pd
 
GOLD_CONN_STR = "postgresql://postgres:diarms@localhost:5432/goldDB"

engine = create_engine(GOLD_CONN_STR)
 
# --- RH: salaire moyen par ville et domaine ---

@api_view(['GET'])
def rh_salaire_view(request):
    try:
        df = pd.read_sql('SELECT * FROM datamart_rh_market', engine)
 
        ville = request.GET.get('ville')
        domaine = request.GET.get('domaine')
 
        if ville:
            df = df[df['ville'].str.lower() == ville.lower()]
        if domaine:
            df = df[df['domaine'].str.lower() == domaine.lower()]
 
        if df.empty:
            return Response(
                {'error': 'Aucune donnée trouvée pour les paramètres fournis.'},
                status=status.HTTP_404_NOT_FOUND
            )
 
        data = df[['ville', 'domaine', 'salaire_moyen']].to_dict(orient='records')
        return Response(data, status=status.HTTP_200_OK)
 
    except Exception as e:
        return Response({'error': str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
# --- RH: nombre d’offres par ville et domaine ---

@api_view(['GET'])
def rh_offres_view(request):
    try:
        df = pd.read_sql('SELECT * FROM datamart_rh_market', engine)
 
        ville = request.GET.get('ville')
        domaine = request.GET.get('domaine')
 
        if ville:
            df = df[df['ville'].str.lower() == ville.lower()]
        if domaine:
            df = df[df['domaine'].str.lower() == domaine.lower()]
 
        if df.empty:
            return Response({'error': 'Aucune donnée trouvée pour les paramètres donnés.'}, status=status.HTTP_404_NOT_FOUND)
 
        data = df[['ville', 'domaine', 'nombre_offres']].to_dict(orient='records')
        return Response(data, status=status.HTTP_200_OK)
 
    except Exception as e:
        return Response({'error': str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
 
# --- Tech Popularity ---

@api_view(['GET'])

def tech_popularity_view(request):

    try:

        df = pd.read_sql('SELECT * FROM datamart_tech_popularity', engine)

        tech_type = request.GET.get('type')

        if tech_type:

            df = df[df['tech_type'].str.lower() == tech_type.lower()]

            if df.empty:

                return Response({'error': f"Aucune donnée pour le type '{tech_type}'"}, status=status.HTTP_404_NOT_FOUND)

        data = df.to_dict(orient='records')

        return Response(data, status=status.HTTP_200_OK)

    except Exception as e:

        return Response({'error': str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
 
# --- Diversité et Conditions ---

@api_view(['GET'])

def diversity_view(request):

    try:

        df = pd.read_sql('SELECT * FROM datamart_diversity_conditions', engine)

        country = request.GET.get('country')

        if country:

            df = df[df['country'].str.lower() == country.lower()]

            if df.empty:

                return Response({'error': f"Aucune donnée pour le pays '{country}'"}, status=status.HTTP_404_NOT_FOUND)

        data = df.to_dict(orient='records')

        return Response(data, status=status.HTTP_200_OK)

    except Exception as e:

        return Response({'error': str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)
 
# --- Salaire par pays et séniorité ---

@api_view(['GET'])

def salary_by_country_seniority_view(request):

    try:

        df = pd.read_sql('SELECT * FROM datamart_salary_by_country_seniority', engine)

        country = request.GET.get('country')

        if country:

            df = df[df['country'].str.lower() == country.lower()]

            if df.empty:

                return Response({'error': f"Aucune donnée pour le pays '{country}'"}, status=status.HTTP_404_NOT_FOUND)

        data = df.to_dict(orient='records')

        return Response(data, status=status.HTTP_200_OK)

    except Exception as e:

        return Response({'error': str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)

 