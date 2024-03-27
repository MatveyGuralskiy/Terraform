# Terraform Cloud
## Terraform Cloud is an application that helps teams use Terraform to provision infrastructure

The advantages of Terraform Cloud:

- It's good for big company of Cloud Engineers

- Remote run of Plan,Apply,Destroy

- You can Integer with Version Control Systems (GitHub, GitLab)

- Restore Remote-State (You don't need S3 Bucket)

- Push Notifications

- You can make users with permissions

- Sentinel Policies - to create Policies for resources (costs money)

- Cost Estimation - will calculate how many cost to run resources

## How to start with Terraform Cloud

First of all, create new repository you want to use for creating resources in AWS with Terraform Cloud:

For example, I created repository: Terraform-Cloud with tf files (Go to *Github_Repository to see the files*)


<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/Github-Repository.png?raw=true" height=400 width=900/>
</div>
<br>
<br>

Now go to website of Terraform Cloud: https://app.terraform.io/

Register and In Google Chrome access the pop-ups of sites:

<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/Google-Access-1.png?raw=true" height=450 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/Google-Access-2.png?raw=true" height=450 width=900/>
</div>
<br>

Now connect to your repository in Terraform Cloud

<br>

<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/Github-Access.png?raw=true" height=400 width=900/>
</div>





## Terraform Cloud Usage

<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/Terraform-Cloud-1.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/Terraform-Cloud-2.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/Terraform-Cloud-3.png?raw=true" height=400 width=900/>
  <br>
  <br>
</div>
  
  Add Enviroment Variables of AWS Credentials now:

<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/Terraform-Cloud-4.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/Terraform-Cloud-5.png?raw=true" height=400 width=900/>
</div>

We're ready to create first deployment with our resources in AWS

Click to Runs And Run your Workflow

<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/Terraform-Cloud-6.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/Terraform-Cloud-7.png?raw=true" height=400 width=900/>
</div>
<br>
<br>
<br>

It's a results in AWS and Website with Terraform Cloud:

<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/AWS-Instance-Deploy-1.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/AWS-Security-group-1.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/Website-Deploy-1.png?raw=true" height=400 width=900/>
  <br>
  <br>
</div>

Let's imagine that our developer change the code of Website

Go to your repository and change your Website

After Push in Github with new changes go to Terraform Cloud to see the changes:

<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/Terraform-Cloud-8.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/Terraform-Cloud-9.png?raw=true" height=400 width=900/>
</div>
<br>
It's a results of Updated Resources Deployment of Website with Terraform Cloud:
<br>
<br>
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/Website-Deploy-2.png?raw=true" height=400 width=900/>
</div>
<br>
Let's change our Global Variables to see the changes:

For example I changed Variables: *Instance_type* from "t2.micro" to "t2.small" and Enviroment from "Production" to "Development"

Choose Variable type *Terraform Variable*
<br>
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/Terraform-Cloud-11.png?raw=true" height=400 width=900/>
</div>
<br>
Now Click to Run Workflow to see the result
<br>
<br>
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/Terraform-Cloud-10.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/Terraform-Cloud-12.png?raw=true" height=400 width=900/>
</div>
<br>
It's a results in AWS and Website with Terraform Cloud new Global Variables parameters:
<br>
<br>
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/AWS-Instance-Deploy-2-Change-Variables.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/AWS-Security-group-2.png?raw=true" height=400 width=900/>
</div>
<br>
At the end I destroy all resources
<br>
<br>
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Cloud/Terraform-Cloud-13.png?raw=true" height=400 width=900/>
</div>
