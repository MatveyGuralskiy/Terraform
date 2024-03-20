# Outputs with Tf file
## It's a basic Terraform file, which is works with Amazon Web Services (AWS)

This Terraform file "*main.tf*" creates AWS Instance with Amazon Linux distribution ami<br> 
He also create AWS Security group with access to ports inbound 80 and 443

Inside directory, I have a bash script which is update packages and install Apache Webserver in Instance and making html webpage<br>
I rename him because he used inside a html webpage variables which I enter in my tf file, I also have a loop for html file

The outputs file "*outputs.tf*" show to us after the command *terraform apply* the result of Instance id, his public and private ip.<br>
He also show to us information about the security group, her id, inbound and outbound ports

## The result of Terraform Apply Outputs
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Outputs/Result.png?raw=true" height=500 width=800/>
</div>
