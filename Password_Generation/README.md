# Password generation for Database MySQL AWS Tf files
## It's a basic Terraform files *main.tf* and *outputs.tf*,*variables.tf* those files work with Amazon Web Services (AWS)

This Terraform file "*main.tf*" creates AWS Database Instance <br>
To see the password that terraform generated for you go to AWS System Manager -> Parameter Store

## Terraform plan before create Database
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Password_Generation/Plan-Result-1.png?raw=true" height=500 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Password_Generation/Plan-Result-2.png?raw=true" height=500 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Password_Generation/Plan-Result-3.png?raw=true" height=500 width=900/>
</div>

## Terraform apply result of Database

<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Password_Generation/Apply-Result-1.png?raw=true" height=500 width=900/>
</div>

## Result in AWS Console RDS Database

<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Password_Generation/AWS-RDS-Result-1.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Password_Generation/AWS-RDS-Result-2.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Password_Generation/AWS-RDS-Result-3.png?raw=true" height=400 width=900/>
</div>

## Result in AWS System Manager Parameter Store
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Password_Generation/AWS-SSM-Result-1.png?raw=true" height=400 width=900/>
</div>
