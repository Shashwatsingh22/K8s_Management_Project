#!/usr/bin/python3
import cgi
import pod
import deploy
import svc

print("content-type: text/html")
print()
mydata=cgi.FieldStorage()

service = mydata.getvalue("service")
subser= mydata.getvalue("subser")
tag = mydata.getvalue("tag")
image_name=mydata.getvalue("image")
label = mydata.getvalue("label")

#-------------- Pod Service -------------
if service == "pod":
    pod.pod_services(subser,tag,image_name)

#-------------- Deployment ------------
elif service == "deployment":
    num=mydata.getvalue("num")
    deploy.deploy_services(subser,tag,image_name,num)

#--------- Service ----------
elif service == "svc":
    app_port=mydata.getvalue("App_port")
    typeP=mydata.getvalue("type_P")
    svc.svc_services(subser,tag,image_name,app_port,typeP)