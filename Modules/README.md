# Modules of Terraform
A Terraform module is a set of Terraform configuration files in a single directory

Instead Copy paste every time all code to create new resources you can use Modules

Modules it's like a functions those you can reuse/call him in any file you want

To use my Module use:

module "Name" {

source = "https://github.com/MatveyGuralskiy/Terraform.git//Modules//NAME_OF_MODULE"

VARIABLE_YOU_WANT_TO_CHANGE = "NEW_PARAMETER"

}

My List of Modules:

- AWS_VPC
