#!/usr/bin/python3
import cgi
import subprocess


print("content-type: text/html")
print()
mydata=cgi.FieldStorage()

cmd=mydata.getvalue("cmd")

print(subprocess.getoutput("sudo "+cmd))
#print(str(output))
