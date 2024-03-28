# Multiple VPC form Module AWS_VPC
## It's a Terraform files which work with Amazon Web Services (AWS)
The files use module AWS_VPC and change variables to create personal VPC: VPC-Staging and VPC-Development<br>
The region of VPC's it's *eu-west-2* UK, London<br>
He creates AWS VPC's for every single VPC he creates 2 Public Subnets, 2 Private Subnets with NAT Gateway, Subnets run in different available zones with Internet gateway<br>
Every Private Subnet has a unique route table<br>
NAT Gateway used two Elastic IP's<br>
At the end outputs of tf files shows to you Public Subnets ID, Private Subnets ID and VPC ID with CIDR Block<br>
VPC-Staging

The VPC CIDR Block = 10.100.0.0/16

Public Subnets: 10.100.1.0/24, 10.100.2.0/24

Private Subnets: 10.100.11.0/24, 10.100.12.0/24

VPC-Development

The VPC CIDR Block = 10.200.0.0/16

Public Subnets: 10.200.1.0/24, 10.200.2.0/24

Private Subnets: 10.200.11.0/24, 10.200.12.0/24

In directory Module_Work we have example of how to use this Module

## Demonstration of VPC's
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Demonstration-Staging.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Demonstration-Development.png?raw=true" height=500 width=800/>
</div>

## Terraform Init of Module
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Init.png?raw=true" height=500 width=800/>
</div>

## Terraform plan before create VPC's
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Plan-1.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Plan-2.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Plan-3.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Plan-4.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Plan-5.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Plan-6.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Plan-7.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Plan-8.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Plan-9.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Plan-10.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Plan-11.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Plan-12.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Plan-13.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Plan-14.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Plan-15.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Plan-16.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Plan-17.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Plan-18.png?raw=true" height=600 width=800/>
</div>

## Terraform apply process
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Apply-1.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Apply-2.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/Apply-3.png?raw=true" height=600 width=800/>
</div>


## Result in AWS Console VPC and Subnets
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/AWS-Subnets.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/AWS-VPC-1.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/AWS-VPC-2.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Modules/AWS_VPC/AWS-VPC-3.png?raw=true" height=400 width=800/>
</div>
