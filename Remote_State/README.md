# Remote State tf files
## It's a Terraform files which work with Amazon Web Services (AWS)
The first directory is *S3_Bucket* which create Bucket in AWS with Versioning and Encryption<br> 
The directory *VPC* create resource AWS VPC with 2 Public Subnets which run in different available zones with Internet gateway<br>
The Last directory is *Resources* which create Security group, Instance and make deployment to Webserver Apache with Webpage in our VPC<br>
We sending our *terraform.tfstate* with all information about resources in S3 Bucket, we are created

The VPC CIDR Block = 10.0.0.0/16

Public Subnets: 10.0.1.0/24, 10.0.2.0/24

## Final Deployment of Webserver with our VPC
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/Deployment.png?raw=true" height=500 width=900/>
</div>

## Terraform plan of S3 Bucket
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/S3-Bucket-1.png?raw=true" height=500 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/S3-Bucket-2.png?raw=true" height=500 width=900/>
</div>

## Terraform plan of VPC
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/Plan-VPC-1.png?raw=true" height=500 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/Plan-VPC-2.png?raw=true" height=500 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/Plan-VPC-3.png?raw=true" height=500 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/Plan-VPC-4.png?raw=true" height=500 width=900/>
</div>

## Terraform apply of VPC with sending terraform.tfstate to S3 Bucket
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/VPC_Init.png?raw=true" height=500 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/Apply-VPC.png?raw=true" height=600 width=900/>
</div>

## Terraform plan of Resources
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/Resources-Plan-1.png?raw=true" height=600 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/Resources-Plan-2.png?raw=true" height=600 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/Resources-Plan-3.png?raw=true" height=600 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/Resources-Plan-4.png?raw=true" height=600 width=900/>
</div>

## Sending Resources terraform.tfstate to S3 Bucket
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/Resources-Init.png?raw=true" height=500 width=900/>
</div>


## Result in AWS Console S3 Bucket
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/AWS-S3-Bucket-1.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/AWS-S3-Bucket-2.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/AWS-S3-Bucket-3.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/AWS-S3-Bucket-4.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/AWS-S3-Bucket-5.png?raw=true" height=400 width=900/>
</div>

## Result in AWS Console VPC
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/AWS-VPC-1.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/AWS-VPC-2.png?raw=true" height=400 width=900/>
</div>

## Result in AWS Console Instances and Security Group
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/AWS-Instance.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Remote_State/AWS-Security-group.png?raw=true" height=400 width=900/>
</div>
