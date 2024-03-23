# Autocomplete Variables with Tf and Tfvars files
## It's a basic Terraform files, which is work with Amazon Web Services (AWS)

This Terraform file creates AWS Instance with Amazon Linux distribution ami<br> 
He adds some outputs like: Instance DNS-name, Instance Public ip and more<br>
And makes variables that can be changed for everyone like: region, Instance type, allow ports and more<br>

He also create AWS Security group with access to ports inbound 80 and 5000 for Flask by default

## We have 3 ways of using Autocomplete variables with our tf file


1. To enter the variables parameters you want to configurate, for example:

*terraform plan -var="Region=eu-central-1" -var="Instance_type=t2.small"*

## The result of Terraform Plan Autocomplete Variables by command
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Autocomplete_Variables/Plan-Change-vars-1.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Autocomplete_Variables/Plan-Change-vars-2.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Autocomplete_Variables/Plan-Change-vars-3.png?raw=true" height=500 width=800/>
</div>


2. To enter this enviroment variables to the OS, for example:

*export TF_VAR_Region=eu-east-1*

*export TF_VAR_Instance_type=t2.small*

This command will show to you if enviroment system is entered to the Linux:

*env | grep TF_VAR*

## The result of Terraform Plan Autocomplete Variables by Enviroment Variables
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Autocomplete_Variables/Plan-TF_VARS-1.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Autocomplete_Variables/Plan-TF_VARS-2.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Autocomplete_Variables/Plan-TF_VARS-3.png?raw=true" height=500 width=800/>
</div>


3. To create tfvars format file, The file can by named only *terraform.tfvars* or *NAME.auto.tfvars* for example:

I created one file *terraform.tfvars* for Development:

## The result of Terraform Plan Autocomplete Variables with terraform.tfvars file
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Autocomplete_Variables/Plan-Terraform_tfvars-1.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Autocomplete_Variables/Plan-Terraform_tfvars-2.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Autocomplete_Variables/Plan-Terraform_tfvars-3.png?raw=true" height=500 width=800/>
</div>


The second file I created was *prod.auto.tfvars* for Production, after *terraform plan* I make deployment for it with *terraform apply*

<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Autocomplete_Variables/Plan-Prod_auto_tfvars-1.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Autocomplete_Variables/Plan-Prod_auto_tfvars-2.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Autocomplete_Variables/Plan-Prod_auto_tfvars-3.png?raw=true" height=500 width=800/>
</div>

## The result of AWS Console, Instance and Security Group
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Autocomplete_Variables/AWS-Instance.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Autocomplete_Variables/AWS-Security-grop-1.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Autocomplete_Variables/AWS-Security-group-2.png?raw=true" height=400 width=800/>
</div>


