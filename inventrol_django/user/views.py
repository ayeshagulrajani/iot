# Create your views here.
from django.shortcuts import render
import mysql.connector 
from django.contrib.auth import logout
from django.http import HttpResponse
from django.db import connection
#conn=mysql.connector.connect(host="localhost",database='inventory',user="root",password="hakunamatata")
#cursor=conn.cursor()

def index(request):
    return render(request, 'landing_index.html')

def admin(request):
    return render(request, 'admin_index.html')

def profile(request):
    return render(request, 'admin_profile.html')

def check(request):
    print (request.user.email)
    sql= "select * from user where email='{}'".format(request.user.email) 
    # return HttpResponse(sql)
    print(request.user.email)
    cursor.execute("select * from user where email='{}'".format(request.user.email) )
    sql1 = cursor.fetchall()
    if len(sql1) < 1:
        pass
    else:
        return render(request, 'admin_index.html')
    return HttpResponse(sql1)
    return render (request, 'landing_index.html')

def log_out(request):
    logout(request)
    return render(request,"landing_index.html")

def check_log(request):
    with connection.cursor() as cursor:
        cursor.execute("Select * from log")
        res=cursor.fetchall()
        return render(request,'test.html',{"res": res})

def lab_incharge(request):
    return render(request, "lab_incharge.html")