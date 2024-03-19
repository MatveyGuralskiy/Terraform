# Simple Webserver with Tf file
## It's a basic Terraform file, which is works with Amazon Web Services (AWS)

This Terraform file creates AWS Instance with Amazon Linux distribution ami<br> 
He also create AWS Security group with access to ports inbound 80 and 443

Inside directory, I also have a bash script which is update packages and install Apache Webserver in Instance and making html webpage 

Just enter in your tf file instead of my script:

*user_data = file("PATH TO YOUR SCRIPT")*

And the tf file after apply will bootstrapping this script to AWS Instance 

## The result in AWS:
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/External_File_Webserver/Instance.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/External_File_Webserver/Security-Group.png?raw=true" height=400 width=800/>
</div>

## The result of Webserver with Instance Public-IP:
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/External_File_Webserver/Result.png?raw=true" height=400 width=800/>
</div>
