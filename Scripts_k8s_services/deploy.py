import subprocess

def deploy_service(subser,tag,image_name,num):
    
    if subser == "get_all":
        print(subprocess.getoutput("sudo kubectl get  deployement"))    
    
    elif subser == "create":
        print(subprocess.getoutput("sudo kubectl create deployement "+tag+" --image="+image_name))

    elif subser == "describe":
        print(subprocess.getoutput("sudo kubectl describe deployment "+tag))

    elif subser == "delete":
        print(subprocess.getoutput("sudo kubectl delete deployement "+tag))

    elif subser == "get_rs":
        print(subprocess.getoutput("sudo kubectl get rs"))

    elif subser == "get_rc":
        print(subprocess.getoutput("sudo kubectl get rc"))    
    
    elif subser == "scale_out":
        print(subprocess.getoutput("sudo kubectl scale deployment "+tag+" "+" --replicas="+num))