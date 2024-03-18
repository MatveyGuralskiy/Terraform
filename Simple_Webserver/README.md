# Simple Webserver with Tf file
## It's a basic Terraform file, which is works with Amazon Web Services (AWS)

This Terraform file creates AWS Instance with Amazon Linux distribution ami<br> 
He also create AWS Security group with access to ports inbound 80 and 443

Inside the file I have Bash script which is update packages and install Apache Webserver in Instance and making html webpage 

## The process of apply:
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Simple_Webserver/Process-1.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Simple_Webserver/Process-2.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Simple_Webserver/Process-3.png?raw=true" height=500 width=800/>
</div>

## The result in AWS:
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Simple_Webserver/Instance.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Simple_Webserver/Security-Group.png?raw=true" height=400 width=800/>
</div>

## The result of Webserver with Instance Public-IP:
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Simple_Webserver/Webserver.png?raw=true" height=400 width=800/>
</div>
