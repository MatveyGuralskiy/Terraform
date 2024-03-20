# Retieving (get) Data Tf files
## It's a basic Terraform files *main.tf* and *outputs.tf*, those files work with Amazon Web Services (AWS)

This Terraform file "*main.tf*" creates AWS Instance with Amazon Linux distribution ami<br> 
He also create AWS Security group with access to ports inbound 80,443 and ssh port access 

"*Data*" give to us informations from AWS like regions, availability zones and more:

And with *outputs.tf* we print everything

## The result of Retrieving Data using Data Source:
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Data_Source/Retrieving_Data/Result_1.png?raw=true" height=500 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Data_Source/Retrieving_Data/Result_2.png?raw=true" height=500 width=900/>
</div>
