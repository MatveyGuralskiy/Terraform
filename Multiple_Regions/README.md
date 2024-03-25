# Multiple Regions tf files
## It's a basic Terraform files, which is work with Amazon Web Services (AWS)

This Terraform file create three AWS Instances with Amazon Linux distribution ami in different regions<br>
We add three AWS Regions by creating 3 AWS Providers: USA, Germany and France<br>
He also print public ip of every server at the end

## The result of Terraform Plan
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Multiple_Regions/Plan-1.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Multiple_Regions/Plan-2.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Multiple_Regions/Plan-3.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Multiple_Regions/Plan-4.png?raw=true" height=600 width=800/>
    <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Multiple_Regions/Plan-5.png?raw=true" height=600 width=800/>
</div>


## The result of Terraform Apply
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Multiple_Regions/Apply.png?raw=true" height=600 width=800/>
</div>

## The result of AWS Instances in different regions
### California, USA
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Multiple_Regions/Instance-USA.png?raw=true" height=400 width=800/>
</div>

### Frankfurt, Germany
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Multiple_Regions/Instance-Germany.png?raw=true" height=400 width=800/>
</div>

### France, Paris (by default)
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Multiple_Regions/Instance-France.png?raw=true" height=400 width=800/>
</div>
