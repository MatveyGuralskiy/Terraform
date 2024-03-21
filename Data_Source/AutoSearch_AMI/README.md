# Auto-Search for AMI ID  Tf files
## It's a basic Terraform files *main.tf* and *outputs.tf*, those files work with Amazon Web Services (AWS)

This Terraform file "*main.tf*" creates AWS Instances with Amazon Linux distribution ami and Ubuntu ami<br> 

"*data*" give to us informations from AWS of ami id and ami name:

And with *outputs.tf* we print everything

Every single time use ami id's from AWS Console is't correct because Amazon makes updates and in every region in AWS we have a different AMI id

So to solve this problem we used Auto-Search for AMI ID by using Data Source

## Outputs of Terraform plan before creating an Instances
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Data_Source/AutoSearch_AMI/without_instance.png?raw=true" height=300 width=900/>
</div>

## Terraform plan with Instances
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Data_Source/AutoSearch_AMI/Process-1.png?raw=true" height=700 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Data_Source/AutoSearch_AMI/Process-2.png?raw=true" height=700 width=900/>
</div>

## Terraform apply

<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Data_Source/AutoSearch_AMI/Process-3.png?raw=true" height=500 width=900/>
</div>

## Result of Instances in AWS

<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Data_Source/AutoSearch_AMI/Result-Instances-1.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Data_Source/AutoSearch_AMI/Result-Instances-2.png?raw=true" height=400 width=900/>
</div>
