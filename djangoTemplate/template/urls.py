from django.urls import path
from .views import getTemplate

urlpatterns = [
    path('getTemplate/<int:id>/', getTemplate, name='getTemplate'),
]