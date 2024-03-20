# Order of Creation resources
## It's a basic Terraform file, which is works with Amazon Web Services (AWS)

This Terraform file creates three AWS Instances with Amazon Linux distribution ami<br> 
He also create AWS Security group with access to ports inbound 80 and 443 and ssh port 22

I created three instances with different order (dependeces):

The order of creation resources in my tf file:

1. Security group

2. Amazon_Linux Instance

3. Amazon_Linux_2 Instance

4. Amazon_Linux_3 Instance

To make sure that everything will create correctly with *terraform plan*

## The result of Terraform Plan
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Order_Resources/Process-1.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Order_Resources/Process-2.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Order_Resources/Process-3.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Order_Resources/Process-4.png?raw=true" height=400 width=800/>
</div>

## The order of creation resources after Terraform apply
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Order_Resources/Order_1.png?raw=true" height=200 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Order_Resources/Order_2.png?raw=true" height=200 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Order_Resources/Order_3.png?raw=true" height=200 width=800/>
</div>

## The result of Instances in AWS
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Order_Resources/AWS_Instances.png?raw=true" height=400 width=800/>
</div>
