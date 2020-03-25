from django.urls import path

from .views import home_page_view, json_view

urlpatterns = [
    path('', home_page_view, name='home'),
    path('json/', json_view, name='json')
]
