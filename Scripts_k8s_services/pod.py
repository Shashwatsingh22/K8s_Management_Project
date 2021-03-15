import subprocess

def pod_services(subser, tag ,image_name,label):
    if subser == "lunch":
        print(subprocess.getoutput("sudo kubectl run "+tag+" --image="+image_name))
    
    elif subser == "describe":
        print(subprocess.getoutput("sudo kubectl describe pod "+tag))

    elif subser == "get_all":
        print(subprocess.getoutput("sudo kubectl get pod"))

    elif subser == "delete":
        print(subprocess.getoutput("sudo kubectl delete pod "+tag))

    elif subser == "labelValue":
        print(subprocess.getoutput("sudo kubectl get pods -L "+label))      
