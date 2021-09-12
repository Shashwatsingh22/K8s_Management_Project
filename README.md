![GitHub top language](https://img.shields.io/github/languages/count/Shashwatsingh22/K8s_Management_Project?style=flat-square)
![GitHub top language](https://img.shields.io/github/languages/top/Shashwatsingh22/K8s_Management_Project?style=flat-square)
<img alt="GitHub pull requests" src="https://img.shields.io/github/issues-pr-raw/Shashwatsingh22/K8s_Management_Project?style=flat-square">
<img alt="GitHub closed pull requests" src="https://img.shields.io/github/issues-pr-closed/Shashwatsingh22/K8s_Management_Project?style=flat-square">
<img alt="GitHub" src="https://img.shields.io/github/license/Shashwatsingh22/K8s_Management_Project?style=flat-square">
<img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/Shashwatsingh22/K8s_Management_Project?style=flat-square">
<img alt="GitHub forks" src="https://img.shields.io/github/forks/Shashwatsingh22/K8s_Management_Project?style=flat-square">
<img alt="GitHub contributors" src="https://img.shields.io/github/contributors/Shashwatsingh22/K8s_Management_Project?style=flat-square">

# Master Cluseter 😍
An Cluster Kubernetes Management project, which helps users to manage the backend part for the there application like setup cluster on cloud or own data center , manage the cluster  , and many services are provided here.

--> Demo Video
[![Demo Video](https://i.ytimg.com/vi/6hO0Px_3h_w/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAOSOMnSLzZwDMeFjP4ct7-NveTXw)](https://www.youtube.com/watch?v=6hO0Px_3h_w "Demo Of Project!!") <br>



## Configuration of Multi Node Cluster on Cloud:


- Multi Node Cluster:

        Multi Node Cluster is a relation between master and slave in which there are many slave which is
        control by a single master. This will divide the work and will not put any burden on a single
        pod which results in reducing of time complexity. 

- Why Configuration on Clouds:

       We can configure it on any datacenter which will be controlled by us. So we use clouds services to
       configure it.  After being configured , the user does not need to do anything, all is our 
       business , we just want your details like access key, passwords or give us permission by the IAM role on 
       the clouds and give us  that much of access so that we can create instance and use that 
       instance.  In this it will be that you just need to tell how many master will be there and how 
       many slaves? In which we can create high availability architecture with the help of multi master 
       structure  in which there can be many master as well as slave and if one master is down then we 
       will have another master .


## Configure :

1.Cluster on Same Cloud Plateform:

    In this, user have to tell  platform  in order to build architecture on it
    single platforms like google clouds, aws , azure etc.
               
 2.Cluster on Multi Cloud Plateform:
                   
    In today’s industry , everyone needs all the architecture in multicloud Cluster. As one slave is running on 
    their local datacenter , another on AWS or Google clouds  and all are running on some other clouds .
    This is Multiclouds Architecture.

🤔 Wants to Know More You Can Refer to this blog ! (Which will explain you How this complete setup is Done by Ansible ?) 
📝https://bit.ly/3s9Reka

![cloud_plateforms](https://raw.githubusercontent.com/Shashwatsingh22/K8s_Management_Project/main/images/cloud_plateforms.png)

## Tool used for automation:

We are using ANSIBLE for automation which is good for the configuration but not for provisioning but we know how to provision it with the help of ANSIBLE. 

![ansible_use](https://raw.githubusercontent.com/Shashwatsingh22/K8s_Management_Project/main/images/ansible_1.gif)

But In Next Verision we are going to use Terraform (For Provisioning).<br>
<img src="https://raw.githubusercontent.com/Shashwatsingh22/K8s_Management_Project/main/images/Terraform.png" width="400" height="200"/><br>
     
Now it will be the task of ANSIBLE to download the required software which we have already hosted on our cloud which will act as controller node so that we can manage manged node and do anything.


- Kubernetes:

        Kubernetes is an open source container orchestration engine for automating deployment, scaling, 
        and management of containerized applications. The open source project is hosted by the Cloud 
        Native Computing Foundation
     
        Kubernetes is a portable, extensible, open-source platform for managing containerized workloads 
        and services, that facilitates both declarative configuration and automation. It has a large, 
        rapidly growing ecosystem. Kubernetes services, support, and tools are widely available.



- Kubernetes Services

        1.Pod : Pods are the smallest, most basic deployable objects in Kubernetes. A Pod represents a 
        single instance of a running process in your cluster. Pods contain one or more containers, such 
        as Docker containers. When a Pod runs multiple containers, the containers are managed as a 
        single entity and share the Pod's resources.


-	Launch Pod:

        If we want create a new pod, then click on the launch pod and then we will give a tag and use 
        any image like httpt  then our pod will be created.

-	Get All:

        From this we can find out how many pods are in running in  our entire cluster.
                    
                    
-	Delete Pod:

        To delete an existing pods from the cluster without login from clouds using this App

-	Describe Pod:

        It will describe all things about the pods  after taking a label value


- Get Pods by label Value:
                      
                     
           
2.	Deployment
        
    A Deployment provides declarative update    for Pods and ReplicaSets . You describe a desired state
     in a Deployment, and the Deployment Controller changes the actual state to the desired state at a 
     controlled rate. You can define Deployments to create new ReplicaSets, or to remove existing 
     Deployments and adopt all their resources with new Deployments.
                           

        Create Deployment:
        The ReplicaSet creates Pods in the background. Check the status of the rollout to see if it 
        succeeds or not. 

        •	Get All:
        From this we can find out how many deployment are in running in  our entire cluster.

        •	Delete Deployment:
        To delete an existing deployment from the cluster without login

        •	Describe Deployment Get RC(Replication Controller) Detail:
        If a pod is going down , it helps to restart it or if it is not restarted , then it helps to 
        male a same replica. It helps to fullfill the need of deployment of admin.

        •	Get RS(Replica Set) Detail:
            A ReplicaSet's purpose is to maintain a stable set of replica Pods running at any given 
            time. As such, it is often used to guarantee the availability of a specified number of 
            identical Pods

        •	Scale_Out: 
            We can increase the deployment using this scale_out button

        •	Scale_in:
        We can decrease the deployment using this scale_in button
        •	Update Version of the image:



3.	Secret

4.	Service

5.	Namespace

6.	Storage

7.	Multi Container Pod

8.	Cluster role

9.	Demon Set

10.	Package Manger (Helm) 



Get Shell :
                  
    1.	Master
    2.	Container

Image  Creater Docker:

    Create Image:

## Contributors
<table>
  <tr>
    <td align="center">
        <a href="https://github.com/Shashwatsingh22">
            <img src="https://avatars.githubusercontent.com/u/55051478?s=400&u=bd48a10180ed2d8ff8ad4368ae875ae841d13569&v=4" width="100px;" alt=""/>
            <br />
            <sub>
                <b>Shashwat Singh</b>
            </sub>
        </a>
        <br />
    </td>
    <td align="center">
        <a href="https://github.com/adityasinghpratham">
            <img src="https://avatars.githubusercontent.com/u/63394722?s=400&v=4" width="100px;" alt=""/>
            <br />
            <sub>
                <b>Aditya Singh Pratham</b>
            </sub>
        </a>
        <br />
    </td>
    <td align="center">
        <a href="https://github.com/NeerajSaini12560">
            <img src="https://avatars.githubusercontent.com/u/63442908?s=400&u=61ba9757b66762f6890854578903ce82e297153c&v=4" width="100px;" alt=""/>
            <br />
            <sub>
                <b>Neeraj Saini</b>
            </sub>
        </a>
        <br />
    </td>
    <td align="center">
        <a href="https://github.com/vishnupsingh523">
            <img src="https://avatars.githubusercontent.com/u/49968961?s=460&u=c4929fe9fbf7c08bc4be98b09c50f226a949f9b4&v=4" width="100px;" alt=""/>
            <br />
            <sub>
                <b>Vishwanath Pratap Singh</b>
            </sub>
        </a>
        <br />
    </td>
    </tr>
</table>



## Let us explain in deep that what we are using in the Master Cluster and why we are using it . 🤔

So first of all , we are using automation tool in this project , in which you have to provide IAM credentials to us so that we can provide the cloud services.  On the basis of that credentials we configure your cloud to the cluster .Here we are working on Kubernetes cluster and we used Ansible as our configuration tool for automation.

Let's discuss few points about ansible ...

There are two nodes in the Ansible, one is the manage node and the other one  is the controller node. In this, we are taking the credentials from user as per there request of any cloud(like googke cloud , aws, azure )  and with the help of the ansible tool we are provisioning instance  and configuring  it and when the instance is being lunched  on the basis of number of master and we can cretae master of high availability architecture and we can add as many numbers of slave to Cluster .For Demo we lunched an single master and initially we launched 2 slaves then ansible configured the master as well as setup all the important softwares of  master and slave and manage all the Configuration files . To manage all the stuffs from our side  we provide some files in your master node so that you can access your master node directly through our application (website and app) in which there are some python files which hosted automatically after the server run. We are doing all this with the help of Ansible.

And we will add multi cloud architecture in next version in which we ask you to where do you want to launch your master or slave and how many slave do you have and where do you want to launch per slave . If you want to make your master on google cloud then we will fetch all the details like to launch a instance we need a (public) key  for security and all other things . 

We have not yet made it user based. We are working through our default values and launching our instance through cloud .
In next version we will implement the user mode and create our database through firstore which store all our data like some important credentials like name , username , password , email , iam role  creadentials .
