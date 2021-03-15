import subprocess

def svc_services(subser,tag,image_name,app_port,typeP):
    if subser == "get":
        print(subprocess.getoutput("kubectl get svc"))