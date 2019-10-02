# Create your views here.
from django.shortcuts import render
import mysql.connector 
from django.contrib.auth import logout

conn=mysql.connector.connect(host="localhost",database='inventory',user="root",password="hakunamatata")
cursor=conn.cursor()

def index(request):
    return render(request, 'landing_index.html')