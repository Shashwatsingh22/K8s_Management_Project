import subprocess

def secret_svc(mydata):
    tag = mydata.getvalue("tag")
    key = mydata.getvalue("key")
    value = mydata.getvalue("value")
    print(subprocess.getoutput("sudo kubectl create secret genric "+tag+" --form-literal="+key+"="+value))