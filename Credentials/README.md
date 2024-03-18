# 💡 Credentials in Terraform files
Instead of writing your credentials of AWS in terraform files,<br> 
You can make it more easier by enter in console your credentials with enviroment variables

## In terminal enter the follow variables:

*export AWS_ACCESS_KEY_ID=YOUR ACCESS KEY*

*export AWS_SECRET_ACCESS_KEY=YOUR SECRET KEY*

*export AWS_DEFAULT_REGION=YOUR REGION TO WORK WITH*

It's the same enviroment variables as in AWS CLI

So now in provider block you can use in your terraform file only:

*provider "aws" {}*
