# Dynamic External Webserver with Tf file
## It's a basic Terraform file, which is works with Amazon Web Services (AWS)

This Terraform file creates AWS Instance with Amazon Linux distribution ami<br> 
He also create AWS Security group with access to ports inbound 80 and 443

Inside directory, I have a bash script which is update packages and install Apache Webserver in Instance and making html webpage<br>
I rename him because he used inside a html webpage variables which I enter in my tf file, I also have a loop for html file

Just enter in your tf file instead of my script:

*user_data = templatefile("PATH TO YOUR SCRIPT.tpl", {*
*ENTER YOUR VARIABLES})*

To make sure that everything will create correctly with *terraform plan* i used *terraform console*

Inside the console I enter values for variables I want:

*templatefile("script.sh.tpl", { Name = "Matvey", Surname = "Guralskiy",tools = ["Kubernetes", "Docker", "Terraform", "Ansible", "Linux", "Jenkins", "Networking"]})*

## The result of Terraform Console
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Dynamic_External_Webserver/Console.png?raw=true" height=400 width=800/>
</div>

And the tf file after apply will bootstrapping this script template to AWS Instance:

## The result of Terraform Plan
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Dynamic_External_Webserver/Process-1.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Dynamic_External_Webserver/Process-2.png?raw=true" height=400 width=800/>
</div>

## The result of Webserver with Instance Public-IP:
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Dynamic_External_Webserver/Result.png?raw=true" height=400 width=800/>
</div>


