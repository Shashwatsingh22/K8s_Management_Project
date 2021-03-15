import subprocess

def deploy_service(subser,mydata):
    
    if subser == "get_all":
        print(subprocess.getoutput("sudo kubectl get  deployement"))    
    
    elif subser == "create":
        tag = mydata.getvalue("tag")
        image_name = mydata.getvalue("image_name")
        print(subprocess.getoutput("sudo kubectl create deployement "+tag+" --image="+image_name))

    elif subser == "describe":
        tag = mydata.getvalue("tag")
        print(subprocess.getoutput("sudo kubectl describe deployment "+tag))

    elif subser == "delete":
        tag = mydata.getvalue("tag")
        print(subprocess.getoutput("sudo kubectl delete deployement "+tag))

    elif subser == "get_rs":
        print(subprocess.getoutput("sudo kubectl get rs"))

    elif subser == "get_rc":
        print(subprocess.getoutput("sudo kubectl get rc"))    
    
    elif subser == "scale_out":
        tag = mydata.getvalue("tag")
        num = mydata.getvalue("num")
        print(subprocess.getoutput("sudo kubectl scale deployment "+tag+" "+" --replicas="+num))

    elif subser == "udate_image":
        tag = mydata.getvalue("tag")
        current_container_name = mydata.getvalue("current_container_name")
        updated_image = mydata.getvalue("updated_image")
        print(subprocess.getoutput("sudo kubectl set image deployment "+tag+" "+current_container_name+"="+updated_image))    