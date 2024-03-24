# Lookup with Tf files
## It's a basic Terraform files, which is work with Amazon Web Services (AWS)

This Terraform file creates AWS Instance with Amazon Linux distribution ami<br>
He also creates Security group with Lookup and Condition with different variants<br>
The tf files use variable *Enviroment* which is make Condition to output in AWS<br>
Variables *EC2_Size* and *Allow_Ports* it's a map variables which we use for lookup

Formula/Syntax of Lookup:

**X = lookup(MAP_NAME,KEY)**


## The result of Terraform Plan Production
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Lookup/Plan-Production-1.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Lookup/Plan-Production-2.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Lookup/Plan-Production-3.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Lookup/VS_Code-Production.png?raw=true" height=250 width=800/>
</div>

## The result of Terraform Plan Staging
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Lookup/Plan-Staging-1.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Lookup/Plan-Staging-2.png?raw=true" height=700 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Lookup/Plan-Staging-3.png?raw=true" height=700 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Lookup/Plan-Staging-4.png?raw=true" height=700 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Lookup/VS_Code-Staging.png?raw=true" height=250 width=800/>
</div>

## The result of Terraform Plan Develop
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Lookup/Plan-Develop-1.png?raw=true" height=700 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Lookup/Plan-Develop-2.png?raw=true" height=700 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Lookup/Plan-Develop-3.png?raw=true" height=700 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Lookup/VS_Code-Develop.png?raw=true" height=250 width=800/>
</div>

## The result of AWS Console Instance and Security group for example Staging
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Lookup/AWS-Instances.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Lookup/AWS-Security-group-1.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Lookup/AWS-Security-group-2.png?raw=true" height=400 width=800/>
</div>
