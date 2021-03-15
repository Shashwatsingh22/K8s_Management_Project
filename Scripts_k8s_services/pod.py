import subprocess

def pod_services(subser,mydata):
    if subser == "lunch":
        tag = mydata.getvalue("tag")
        image_name = mydata.getvalue("image_name")
        print(subprocess.getoutput("sudo kubectl run "+tag+" --image="+image_name))
    
    elif subser == "describe":
        tag = mydata.getvalue("tag")
        print(subprocess.getoutput("sudo kubectl describe pod "+tag))

    elif subser == "get_all":
        print(subprocess.getoutput("sudo kubectl get pod"))

    elif subser == "delete":
        tag = mydata.getvalue("tag")
        print(subprocess.getoutput("sudo kubectl delete pod "+tag))

    elif subser == "labelValue":
        label =mydata.getvalue("label")
        print(subprocess.getoutput("sudo kubectl get pods -L "+label))      
