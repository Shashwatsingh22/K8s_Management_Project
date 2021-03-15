#!/usr/bin/python3
import cgi
import pod
import deploy
import svc
import secret

print("content-type: text/html")
print()
mydata=cgi.FieldStorage()

service = mydata.getvalue("service")
subser= mydata.getvalue("subser")

#-------------- Pod Service -------------
if service == "pod":
    pod.pod_services(subser,mydata)

#-------------- Deployment ------------
elif service == "deployment":
    deploy.deploy_services(subser,mydata)

#--------- Service ----------
elif service == "svc":
    svc.svc_services(subser,mydata)

#------ Secret ----------
elif service == "secret":
    secret.secret_svc(mydata)