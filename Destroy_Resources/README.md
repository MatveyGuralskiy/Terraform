# Destroy Resources
## It's a basic Terraform file, which is works with Amazon Web Services (AWS)

Before I start to destroy I create with the same file 3 Instances by changed count from 0 to 2 and entered the command:

*terraform apply*

Now I want to destroy the Instances with my tf file so we have 3 ways to do that:

1. To delete all lines of resources so terraform after replay will see new changes and going to delete all Instances

2. Instead count=2 enter count=0 so he will understand that we don't need those resources

3. By enter the command: *terraform destroy* and after that confirm *--> yes*

## The process of destroy with result:

<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Destroy_Resources/Process-1.png?raw=true" height=500 width=800/>



  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Destroy_Resources/Result-1.png?raw=true" height=500 width=800/>



  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Destroy_Resources/Result-2.png?raw=true" height=500 width=800/>
</div>
