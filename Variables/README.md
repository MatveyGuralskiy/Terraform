# Variables with Tf file
## It's a basic Terraform files, which is work with Amazon Web Services (AWS)

This Terraform file creates AWS Instance with Amazon Linux distribution ami<br> 
He also create AWS Security group with access to ports inbound 80 and 5000 for Flask<br>
He add some outputs like: Instance DNS-name, Instance Public ip and more<br>
And makes variables that can be changed for everyone like: region, Instance type, allow ports and more

## The result of Terraform Plan
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Variables/Process-1-Plan.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Variables/Process-2-Plan.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Variables/Process-3-Plan.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Variables/Process-4-Plan.png?raw=true" height=400 width=800/>
</div>

## The result of AWS Console
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Variables/AWS-Security-group-1.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Variables/AWS-Security-group-2.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Variables/AWS-Instance.png?raw=true" height=400 width=800/>
</div>

## The result of Terraform Apply
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Variables/Process-5-Apply.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Variables/Process-6-Apply.png?raw=true" height=400 width=800/>
</div>
