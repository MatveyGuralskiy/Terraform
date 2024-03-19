# Lifecycle Resources with Tf file
## It's a basic Terraform file, which is works with Amazon Web Services (AWS)

This Terraform file creates AWS Instance with Amazon Linux distribution ami<br> 
He also create AWS Security group with access to ports inbound 80 and 443

Inside the tf file we have 3 types of lifecycle: *prevent_destroy, ignore_changes and create_before_destroy*

You can test three of them:

The first one will give you an error message before the apply after some changes

The second one will ignore all of changes with specific parameters for example: *user_data*

And the last one will create new Instance resource before he will destroy the older Instance

Inside directory, I have a bash script which is update packages and install Apache Webserver in Instance and making html webpage<br>
I rename him because he used inside a html webpage variables which I enter in my tf file, I also have a loop for html file

## The result of Terraform Apply
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Lifecycle_Resources/Process-1.png?raw=true" height=200 width=800/>
  <p>And the tf file after apply will bootstrapping this script template to AWS Instance:</p>
</div>

## The result of Webserver with Instance Public-IP:
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Lifecycle_Resources/Result.png?raw=true" height=400 width=800/>
</div>


