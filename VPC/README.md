# VPC AWS Resource
## It's a basic Terraform files which work with Amazon Web Services (AWS)
The files create resource AWS VPC with 2 Public Subnets which run in different available zones with Internet gateway<br>
At the end outputs of tf files shows to you Public Subnets ID and VPC ID with CIDR Block<br>
The VPC CIDR Block = 10.0.0.0/16

Public Subnets: 10.0.1.0/24, 10.0.2.0/24

## Terraform plan before create VPC
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC/Plan-1.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC/Plan-2.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC/Plan-3.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC/Plan-4.png?raw=true" height=500 width=800/>
</div>

## Terraform apply result VPC

<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC/Apply.png?raw=true" height=600 width=800/>
</div>

## Result in AWS Console VPC
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC/VPC-1.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC/VPC-2.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC/VPC-3.png?raw=true" height=400 width=800/>
</div>

## Result in AWS Console Internet Gateway
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC/Internet-gateway.png?raw=true" height=400 width=800/>
</div>

## Result in AWS Console Route Table
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC/Route-table-1.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC/Route-table-2.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC/Route-table-3.png?raw=true" height=400 width=800/>
</div>

## Result in AWS Console Subnets
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC/Public_Subnets-1.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/VPC/Public_Subnets-2.png?raw=true" height=400 width=800/>
</div>
