# VPC 2 AWS
## It's a Terraform files which work with Amazon Web Services (AWS)
The files create resource AWS VPC with 3 Public Subnets, 3 Private Subnets with NAT Gateway, Subnets run in different available zones with Internet gateway<br>
Every Private Subnet has a unique route table<br>
NAT Gateway used three Elastic IP's<br>
At the end outputs of tf files shows to you Public Subnets ID, Private Subnets ID and VPC ID with CIDR Block<br>
The VPC CIDR Block = 10.0.0.0/16

Public Subnets: 10.0.1.0/24, 10.0.2.0/24, 10.0.3.0/24

Private Subnets: 10.0.11.0/24, 10.0.12.0/24, 10.0.13.0/24

## Demonstration of VPC
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/Demonstration.png?raw=true" height=500 width=800/>
</div>

## Deployment test with Webserver
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/Deployment.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/AWS-Deployment-Instance.png?raw=true" height=400 width=800/>
</div>

## Terraform plan before create VPC
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/Plan-1.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/Plan-2.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/Plan-3.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/Plan-4.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/Plan-5.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/Plan-6.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/Plan-7.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/Plan-8.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/Plan-9.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/Plan-10.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/Plan-11.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/Plan-12.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/Plan-13.png?raw=true" height=600 width=800/>
</div>

## Result in AWS Console VPC
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/AWS-VPC-1.png?raw=true" height=200 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/AWS-VPC-2.png?raw=true" height=200 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/AWS-VPC-3.png?raw=true" height=200 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/AWS-VPC-4.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/AWS-VPC-5.png?raw=true" height=400 width=800/>
</div>

## Result in AWS Console Internet Gateway
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/AWS-Internet-Gateway.png?raw=true" height=400 width=800/>
</div>

## Result in AWS Console Route Table
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/AWS-Route-table-1.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/AWS-Route-table-2.png?raw=true" height=400 width=800/>
</div>

## Result in AWS Console NAT
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/AWS-NAT-1.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/AWS-NAT-2.png?raw=true" height=400 width=800/>
</div>

## Result in AWS Console Subnets
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/AWS-Subnets-1.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/AWS-Subnets-2.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/AWS-Subnets-3.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC_2/AWS-Subnets-4.png?raw=true" height=400 width=800/>
</div>
