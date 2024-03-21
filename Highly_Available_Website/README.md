# Highly Available Website with Zero-Downtime and Blue-Green Deployment

The tf files will work in any region in AWS

After enter your credentials AWS to the console use *terraform init*

Now in *main.tf* file change the region you want, don't forget to make your Website, just edit the *script.sh* html code

After that use terraform apply and copy the (dns-name) url you get to your browser

In Your AWS IAM add Permissions to the user of AutoScalingFullAccess and ElasticLoadBalancingFullAccess
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/AWS-IAM-Permissions.png?raw=true" height=400 width=900/>
</div>

## My Process of Terraform Plan before create Infrastructure
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/Process-1-Plan.png?raw=true" height=500 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/Process-2-Plan.png?raw=true" height=500 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/Process-3-Plan.png?raw=true" height=500 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/Process-4-Plan.png?raw=true" height=500 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/Process-5-Plan.png?raw=true" height=500 width=900/>
</div>

## Results in AWS Console
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/AWS-AutoScaling-1.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/AWS-AutoScaling-2.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/AWS-AutoScaling-1.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/AWS-Launch-Configuration.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/AWS-Load-Balancer-1.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/AWS-Load-Balancer-2.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/AWS-Load-Balancer-3.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/AWS-Security-Group-1.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/AWS-Security-Group-2.png?raw=true" height=400 width=900/>
</div>

## Result of the Website
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/AWS-Webserver-1.png?raw=true" height=500 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/AWS-Webserver-2.png?raw=true" height=500 width=900/>
</div>
  

## New Version of Website
I changed my *script.sh* file and make new version of website and run new Website's with Zero-Downtime 
The older Instances will remove only after 2 successfull messages from new Instances
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/AWS-Change-Version-Instances.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/Process-6-Apply.png?raw=true" height=400 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/Process-7-Change-Version.png?raw=true" height=500 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/AWS-Webserver-New-Version-1.png?raw=true" height=500 width=900/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Highly_Available_Website/AWS-Webserver-New-Version-2.png?raw=true" height=500 width=900/>
</div>

