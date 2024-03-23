# Local Variables 
## It's a basic Terraform files, which is work with Amazon Web Services (AWS)

This Terraform file creates AWS Instance with Ubuntu Linux distribution ami<br> 
He adds some outputs like: Instance DNS-name, Instance Public ip and more<br>
And makes variables that can be changed for everyone like: region, Instance type, allow ports and more<br>

He also create AWS Security group with access to ports inbound 80 and 5000 for Flask by default

## Terraform apply of resources with Local variables
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Local_Variables/Process-1.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Local_Variables/Process-2.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Local_Variables/Process-3.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Local_Variables/Process-4.png?raw=true" height=500 width=800/>
</div>

## The result of AWS Console, Instance and Security Group
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Local_Variables/AWS-Instance.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Local_Variables/AWS-Security-group-1.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Local_Variables/AWS-Security-group-2.png?raw=true" height=400 width=800/>
</div>


