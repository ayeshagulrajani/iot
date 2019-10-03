# Create your views here.
from django.shortcuts import render
import mysql.connector 
from django.contrib.auth import logout
from django.http import HttpResponse
from django.db import connection
<<<<<<< Updated upstream
=======

>>>>>>> Stashed changes
#conn=mysql.connector.connect(host="localhost",database='inventory',user="root",password="hakunamatata")
#cursor=conn.cursor()

def index(request):
    return render(request, 'landing_index.html')

def admin(request):
    return render(request, 'admin_index.html')

def profile(request):
    return render(request, 'admin_profile.html')

def check(request):
    #print (request.user.email)
    with connection.cursor() as cursor :
        sql= "select * from user where email= '{}' ".format(request.user.email) 
        # return HttpResponse(sql)
        #print(request.user.email)
        cursor.execute("select * from user where email='{}'".format(request.user.email))
        sql1 = cursor.fetchall()
        #print(sql1)
        if len(sql1) < 1:
            return HttpResponse("<h3>This is a test</h3>")
        else:
            login_in_user_cred = sql1[0]
            print(login_in_user_cred)
            data={
                "uid": login_in_user_cred[0],
                "name": login_in_user_cred[1],
                "role": login_in_user_cred[2],
                "dept": login_in_user_cred[3],
                "email": login_in_user_cred[4],
                "address":login_in_user_cred[5]
            }

            if data["role"] == 0: 
                return render(request, 'admin_index.html',data)
            elif data["role"]== 1 :
                return render(request, 'lab_incharge.html',data)
            else:
                return render(request, 'user_index.html' ,data)
        #return HttpResponse(sql1)
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