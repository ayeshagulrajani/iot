from django.contrib import admin
from django.urls import path, include

from . import views

urlpatterns = [
    path('',views.index,name='index'),
    path('admin_view', views.admin, name='admin_index' ),
    path('profile', views.profile, name='profile'),
    path ('login_check',views.check, name='login_check'),
    path ('log_out', views.log_out, name='log_out')
    
]