# Import Block - Manage Manually Resources Half-Automatically
## It's a basic Terraform files, which is work with Amazon Web Services (AWS)

This Terraform files at the beginning was empty<br>
I created in AWS Console two Instances and two Security groups with *Test_for_Import* directory tf files, For example 

## Plan of *Test_for_Import*
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import_Block/Test_For_Import-1%20(1).png?raw=true" height=700 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import_Block/Test_For_Import-2.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import_Block/Test_For_Import-3.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import_Block/Test_For_Import-4.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import_Block/Test_For_Import-5.png?raw=true" height=600 width=800/>
</div>

## AWS Console of Resources that I create with *Test_for_Import*
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import_Block/AWS_Test_For_Import-1.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import_Block/AWS_Test_For_Import-2.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import_Block/AWS_Test_For_Import-3.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import_Block/AWS_Test_For_Import-4.png?raw=true" height=400 width=800/>
</div>
<br>
<br>

You don't have this terraform files in your PC, all what's you know it's ID's of resources

So you can Import it with Import Block to your PC easily

In the main.tf I created *import with id and to and enter resource i want to import with my name*

After 4 imports (Because we have 4 resources in AWS) I make *terraform init*
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import_Block/Plan-Conflict.png?raw=true" height=400 width=800/>
</div>

But when I enter the command *terraform plan* I have some errors so I copy the command Terraform recommend to me for Import Block

*terraform plan -generate-config-out=NAME.tf*

After Plan We have now Import of All resources, but we have Conflicts because of IPv6 Count in AWS Instances so remove this 2 lines for 2 Instances and make Plan again

<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import_Block/Plan-Generated.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import_Block/Plan-Generated-Conflicts.png?raw=true" height=500 width=800/>
</div>
<br>
After Apply I Import everything, and now I can change Resources with Terraform
<br>
<br>
<br>

<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import_Block/Plan-Generated-After-Conflicts-1.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import_Block/Plan-Generated-After-Conflicts-2.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import_Block/Plan-Generated-After-Conflicts-3.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import_Block/Plan-Generated-After-Conflicts-4.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import_Block/Apply-Import.png?raw=true" height=500 width=800/>
</div>
<br>
<br>
I change my Resources
<br>
<br>
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import_Block/Change_Import_Resources.png?raw=true" height=500 width=800/>
</div>
