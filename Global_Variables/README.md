# Global Variables
## It's a basic Terraform files which work with Amazon Web Services (AWS)

## Steps of Using Global Variables
## Step 1: Create S3-Bucket
It's a saved variables that you can use in any file with Terraform Remote-state<br>
First of all we need to create S3 Bucket for Remote-state<br>
Use my S3-Bucket directory and create resource AWS S3 Bucket with versioning and encryption for you<br>

### Result in AWS Console S3 Bucket

<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/S3_Bucket/AWS-S3-Bucket-1.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/S3_Bucket/AWS-S3-Bucket-2.png?raw=true" height=400 width=800/>
</div>

## Step 2: Make Terraform init for Global Variables directory
To save all our Global Variables to the S3 Bucket we need to init our files and make apply

*terraform init*

*terraform apply*

Now we send our *terraform.tfstate* to the S3 Bucket for Remote-state

### Result in AWS Console S3 Bucket after Apply

<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Global_Variables/AWS-S3-Global-vars-1.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Global_Variables/AWS-S3-Global-vars-2.png?raw=true" height=400 width=800/>
</div>

### Terraform.tfstate file
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Global_Variables/Global_Vars-tfstate.png?raw=true" height=600 width=700/>
</div>

## Step 3: Usage of Our Global Variables
I created directory *Usage_Global_Vars* which create AWS Instance using tags with Global Variables which I convert to Local Variables for more comfortable usage

### Terraform Plan of Usage Global Vars

<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Global_Variables/Usage_Global_Vars-1.png?raw=true" height=600 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Global_Variables/Usage_Global_Vars-2.png?raw=true" height=600 width=800/>
</div>

### Result in AWS Console S3 Bucket Now

<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Global_Variables/AWS-S3-Global-vars-3.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Global_Variables/AWS-S3-Global-vars-4.png?raw=true" height=400 width=800/>
  <br>
  <br>
  <br>
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Global_Variables/AWS-S3-Global-vars-5.png?raw=true" height=400 width=800/>
</div>

### Result in AWS Console Instance
<div align="center">
  <img src="https://github.com/MatveyGuralskiy/Terraform/blob/main/Screens/Global_Variables/AWS-Instance-Usage_Global_Vars.png?raw=true" height=400 width=800/>
</div>
