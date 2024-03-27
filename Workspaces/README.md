# Workspaces 
## It's a Terraform files which work with Amazon Web Services (AWS)
For Development despite the fact we can copy our Production and apply him we can use Worspaces for that<br>
Workspaces use only for Testing = Development not for Staging<br>
Workspaces it's not a GIT, he doesn't have versioning<br>
## Workspaces have 5 main commands:

*terraform workspace show*  = To show your current workspace (By default your workspace is "default")

*terraform workspace list*  = To show list of all workspaces

*terraform workspace new NAME*  = To create new workspace (Automatically it's switch to the new workspace)

*terraform workspace select NAME*  = To switch to the workspace you select

*terraform workspace delete NAME*  = To delete the workspace (You should switch to different workspace before deleting)

## How I used Workspaces
The first step was to create S3 Bucket in AWS with Versioning and Encryption to use Remote-State<br> 
We sending our *terraform.tfstate* with all information about resources in S3 Bucket, we are created<br>
I initially create a Deployment as if it were already a finished project, but you want to add something new to it and so we will use Workspace

## Workspace testing-1
I changed my files and add to the tags and Security-group name "${terraform.workspace}" to see our Workspace name

Now after apply we have *terraform.tfstate* file in S3-Bucket with path "env:/testing-1/"

And now we have new resources and new version of Deployment of our Website

## Workspace testing-2
After the first Workspace test I wanted to create another testing and changed another one my Website and make apply

After my apply we have *terraform.tfstate* file in S3-Bucket with path "env:/testing-2/" (directory "env:" already exist)

## Production Deployment of Website
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Workspaces/Deployment-Before.png?raw=true" height=500 width=900/>
</div>

## AWS S3 Bucket Before usage of Workspaces
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Workspaces/AWS-S3-Bucket-Before-1.png?raw=true" height=500 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Workspaces/AWS-S3-Bucket-Before-2.png?raw=true" height=500 width=900/>
</div>

## Workspace testing-1
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Workspaces/Workspace-testing1.png?raw=true" height=350 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Workspaces/Plan-Testing1-1.png?raw=true" height=600 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Workspaces/Plan-Testing1-2.png?raw=true" height=600 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Workspaces/Plan-Testing1-3.png?raw=true" height=600 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Workspaces/AWS-S3-Bucket-Testing1-1.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Workspaces/AWS-S3-Bucket-Testing1-2.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Workspaces/AWS-S3-Bucket-Testing1-3.png?raw=true" height=400 width=900/>
</div>

## Workspace testing-2
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Workspaces/Workspace-testing2.png?raw=true" height=250 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Workspaces/AWS-S3-Bucket-Testing2-1.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Workspaces/AWS-S3-Bucket-Testing2-2.png?raw=true" height=400 width=900/>
</div>

## Final Deployment and AWS Console Results
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Workspaces/Deployment-Testing1.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Workspaces/Deployment-Testing2.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Workspaces/AWS-Security-groups.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Workspaces/AWS-Instances-1.png?raw=true" height=400 width=900/>
</div>
