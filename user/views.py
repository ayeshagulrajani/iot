# Create your views here.
from django.shortcuts import render
import mysql.connector 
from django.contrib.auth import logout
from django.http import HttpResponse
from django.db import connection
#import mypythoncode
#conn=mysql.connector.connect(host="localhost",database='inventory',user="root",password="hakunamatata")
#cursor=conn.cursor()

def index(request):
    return render(request, 'landing_index.html')

def admin(request):
    with connection.cursor() as cursor:
        data=dict()
        cursor.execute("SELECT * from user where uid= {} ".format(request.session["uid"]))
        result=cursor.fetchall()
        #return HttpResponse(result[0])
        data={
            "name": result[0][1],
            "dept": result[0][3],
            "email": result[0][4],
            "address": result[0][5]        
            } 
        sql="select m.m_id,p.name,m.in_lab,m.out_lab,m.user_id from movement as m , product as p  where p.rfid = m.p_id"
        cursor.execute(sql)
        res1=cursor.fetchall()
        #return HttpResponse(res1)
        data["table"]=res1
        data["table_len"]=len(res1) 
        return render(request, 'admin_index.html',data)
        #return render(request, 'admin_index.html')

def profile(request):
    request.session["uid"]=1
    with connection.cursor() as cursor:
        cursor.execute("SELECT * from user where uid= {} ".format(request.session["uid"]))
        result=cursor.fetchall()
        #return HttpResponse(result[0])
        data={
            "name": result[0][1],
            "dept": result[0][3],
            "email": result[0][4],
            "address": result[0][5]        
            }
        if result[0][2]==0:
            data["role"]="Admin"
        elif result[0][2]==1:
            data["role"]="Lab Incharge"
        else:
            data["role"]="Clerk"
        # print(result)
        return render(request, 'admin_profile.html', data)


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
            request.session["uid"]=data["uid"]
            if data["role"] == 0:
                sql="select m.m_id,p.name,m.in_lab,m.out_lab,m.user_id from movement as m , product as p  where p.rfid = m.p_id"
                cursor.execute(sql)
                res1=cursor.fetchall()
                #return HttpResponse(res1)
                data["table"]=res1
                data["table_len"]=len(res1) 
                return render(request, 'admin_index.html',data)
            elif data["role"]== 1 :
                cursor.execute("SELECT number from labs where incharge_id={}".format(data["role"]))
                res=cursor.fetchall()
                print(res[0][0])
                cursor.execute("SELECT m.m_id,p.name,m.in_lab,m.out_lab,m.user_id from movement as m , product as p where (in_lab= {} or out_lab ={}) and p.rfid=m.p_id".format(res[0][0],res[0][0]))
                res=cursor.fetchall()
                print(res)
                data["table"]=res
                return render(request,'lab_incharge.html',data)
            else:
                print("In else")
                sql="select m.m_id,p.name,m.in_lab,m.out_lab from movement as m , product as p  where m.user_id = {} and p.rfid = m.p_id".format(data["uid"])
                cursor.execute(sql)
                res1=cursor.fetchall()
                print(res1)
                data["table"]=res1
                data["table_len"]=len(res1)
                print(data)
                return render(request, 'clerk.html' ,data)
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

#def clerk(request):
    #return render(request, "clerk.html")

def movements(request):
    with connection.cursor() as cursor:
    # print("In else")
        cursor.execute("SELECT rfid_no FROM log order by log_id desc LIMIT 1")
        res=cursor.fetchall()
        #return HttpResponse(res[0])
        #sql="Select * from product where rfid = {} ".format(res[0])
        print("Test")
        cursor.execute("SELECT * FROM product WHERE rfid = %s",res[0])
        res1=cursor.fetchall()
        #return HttpResponse(res1)
        data=dict()
        if len(res1) == 0:
            data["error"]="No records Found for RFID TAG : {}".format(res[0][0])
            return render(request,'movement.html',data)
        else:
            print(res1)
            data={
                "rfid_no": res1[0][0],
                "name": res1[0][1],
                "details": res1[0][2],
                "source_lab": res1[0][3],
                "destination_lab": res1[0][4],
                "last_serviced_date": res1[0][5],
                "error": ""
            }
            # data["table"]=res1
            # data["table_len"]=len(res1)
            # print(data)
            #return HttpResponse(data.items())
            return render(request,'movement.html',data)