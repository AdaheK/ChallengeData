# api/urls.py
from django.urls import path
from . import views
 
urlpatterns = [
    path('rh/salaire/', views.rh_salaire_view),
    path('rh/offres/', views.rh_offres_view),
    path('tech/popularity/', views.tech_popularity_view),
    path('diversity/', views.diversity_view),
    path('salary/by-country-seniority/', views.salary_by_country_seniority_view),
]