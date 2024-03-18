# Change Resources
## It's a basic Terraform file, which is works with Amazon Web Services (AWS)

Before I start run my code, for work Terraform with AWS I use this command:

*terraform init*

He downloades files from the Internet to work with AWS and now I can see what my terraform will be done:

*terraform plan*

I create first of all 2 Instances, with the same tags, and use ami of Amazon Linux distribution

## The plan what my terraform file will do:

<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Change_Resources/Process-1.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Change_Resources/Process-2.png?raw=true" height=500 width=800/>
</div>

I apply to create the resources:

*terraform apply* --> Enter: *yes*

After that I added another resource AWS Instance with tags and Ubuntu distribution ami 

## The plan what my terraform file will do now after changes:

<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Change_Resources/Process-1.png?raw=true" height=500 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Change_Resources/Process-2.png?raw=true" height=500 width=800/>
</div>

## The result of Basic Resources TF file:
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Change_Resources/Result.png?raw=true" height=500 />
</div>
