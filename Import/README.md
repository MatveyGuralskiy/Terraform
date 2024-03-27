# Import - Manage Manually Resources
## It's a basic Terraform files, which is work with Amazon Web Services (AWS)

This Terraform files at the beginning was empty<br>
I created in AWS Console two Instances and Security group manually and in my tf file create empty resources

For example:

resource "aws_instance" "My_Resource" {}

After that enter 2 commands:<br>
*terraform init*

*terraform import aws_instance.My_Resource i-12345(INSTANCE_ID_AWS_CONSOLE)*

Now I edit all resources to make sure all my resources the same as in AWS Console

To make sure that Import is complete, enter *terraform apply* if terraform doesn't want to change/create/destroy anything, it's okay


## The AWS Console Before Import
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import/AWS-Before-1.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import/AWS-Before-2.png?raw=true" height=400 width=800/>
</div>

## Make sure Import is complete
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import/Import.png?raw=true" height=150 width=800/>
</div>

## The AWS Console After Import
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import/AWS-Instance-After-1.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import/AWS-Instance-After-2.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Import/AWS-Security-group-After.png?raw=true" height=400 width=800/>
</div>
