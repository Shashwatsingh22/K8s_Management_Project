import subprocess

def svc_services(subser,mydata):
    if subser == "get":
        print(subprocess.getoutput("sudo kubectl get svc"))

    elif subser == "exp_deploy":
        tag = mydata.getvalue("tag")
        app_port = mydata.getvalue("app_port")
        typeP = mydata.getvalue("typeP")
        print(subprocess.getoutput("sudo kubectl expose deployments "+tag+" --port="+app_port+" --type="+typeP))

    elif subser == "exp_pod":
        tag = mydata.getvalue("tag")
        app_port = mydata.getvalue("app_port")
        typeP = mydata.getvalue("typeP")
        print(subprocess.getoutput("sudo kubectl expose pod "+tag+" --port="+app_port+" --type="+typeP))

    elif subser == "exp_rc":
        tag = mydata.getvalue("tag")
        app_port = mydata.getvalue("app_port")
        typeP = mydata.getvalue("typeP")
        print(subprocess.getoutput("sudo kubectl expose rc "+tag+" --port="+app_port+" --type="+typeP))

    elif subser == "des_svc":
        tag = mydata.getvalue("tag")
        print(subprocess.getoutput("sudo kubectl describe svc "+tag))