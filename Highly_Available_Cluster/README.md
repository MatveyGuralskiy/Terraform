# Highly Available Cluster Website with Zero-Downtime and Blue-Green Deployment

The tf files will work in any region in AWS

After enter your credentials AWS to the console use *terraform init*

Now in *main.tf* file change the region you want, don't forget to make your Website, just edit the *script.sh* html code

After that use terraform apply and copy the (dns-name) url you get to your browser

In Your AWS IAM add Permissions to the user of AutoScalingFullAccess and ElasticLoadBalancingFullAccess
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/AWS-IAM-Permissions.png?raw=true" height=400 width=900/>
</div>

## Terraform deployment of apply first version of website
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Cluster/Process-1-V1.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Cluster/Process-2-V1.png?raw=true" height=400 width=900/>
</div>

## Results in AWS Console
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Cluster/AWS-ASG.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Cluster/AWS-Instances-V1.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Cluster/AWS-LB.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Cluster/AWS-SG.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Cluster/AWS-Target-group.png?raw=true" height=400 width=900/>
</div>

## Result of the Cluster Website V1.0
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Cluster/Website-1-V1.png?raw=true" height=400 width=900/>
</div>


## New Version of Website
I changed my *script.sh* file and make new version of website and run new Website's with Zero-Downtime 
The older Instances will remove only after 2 successfull messages from new Instances
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Cluster/AWS-Instances-V2.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Cluster/AWS-ASG-V2.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Cluster/AWS-Instances-V2-Final.png?raw=true" height=400 width=900/>
</div>

## Result of the Cluster Website V2.0
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Cluster/Website-1-V2.png?raw=true" height=400 width=900/>
</div>



