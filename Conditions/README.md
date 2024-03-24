# Conditions with Tf files
## It's a basic Terraform files, which is work with Amazon Web Services (AWS)

This Terraform file creates AWS Instance with Amazon Linux distribution ami<br> 
The tf files use variable *Enviroment* which is make Condition to output in AWS

Formula/Syntax of Conditions:

**X = CONDITION ? VALUE_IF_TRUE : VALUE_IF_FALSE**

Supported Operators for Conditions:

== and !=

>,<,>=,<=

&& (and), || (or)

## The result of Terraform Plan Production
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Conditions/Plan-Production-1.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Conditions/Plan-Production-2.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Conditions/VS_Code-Production.png?raw=true" height=250 width=800/>
</div>

## The result of Terraform Plan Staging
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Conditions/Plan-Staging-1.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Conditions/Plan-Staging-2.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Conditions/Plan-Staging-3.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Conditions/VS_Code-Staging.png?raw=true" height=250 width=800/>
</div>

## The result of Terraform Plan Develop
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Conditions/Plan-Develop-1.png?raw=true" height=700 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Conditions/Plan-Develop-2.png?raw=true" height=700 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Conditions/VS_Code-Develop.png?raw=true" height=250 width=800/>
</div>

## The result of AWS Console Instance for example Staging
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Conditions/AWS-Instance-Staging.png?raw=true" height=400 width=800/>
</div>
