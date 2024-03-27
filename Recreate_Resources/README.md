# Recreate Resources Painlessly
## It's a basic Terraform files, which is work with Amazon Web Services (AWS)

We have 3 ways of recreate resources:

1. To delete code of resource and after apply back him

It's a basic way to recreate resource

2. To commit with "#" resource and after apply remove "#"

It's a basic way to recreate resource

3. To use command -replace

This is the most effective way of replace, enter the command:

*terraform apply -replace aws_RESOURCE.RESOURCE_NAME*


Why the third way it's the better one? Because it's painlessly for AWS Resource,

For example if you have huge number of dependences this way of recreate resource it's for you

Just with one command all dependences will remove for resource

## The AWS Console Before Recreate Painlessly
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Recreate_Resources/AWS-Instance-Before.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Recreate_Resources/Plan-Before.png?raw=true" height=600 width=800/>
</div>

## Now we Recreate Painlessly our Resource
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Recreate_Resources/Recreate-1.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Recreate_Resources/Recreate-2.png?raw=true" height=600 width=800/>
</div>

## Apply Recreate Painlessly with AWS Console
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Recreate_Resources/Apply.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Recreate_Resources/AWS-Instance-Recreate.png?raw=true" height=400 width=800/>
</div>
