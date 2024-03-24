provider "aws" {
  region = var.Region
  default_tags {
    tags = {
      Owner   = "Matvey Guralskiy"
      Project = "Local Commands"
      From    = "Terraform"
    }
  }
}

resource "null_resource" "start_exec" {
  provisioner "local-exec" {
    command = "echo \"Start of Terraform execution: $(date)\" >> terraform_log.txt"
  }
}

data "aws_ami" "latest_ubuntu" {
  owners      = ["099720109477"]
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

resource "aws_instance" "Ubuntu_Linux" {
  ami           = data.aws_ami.latest_ubuntu.id
  instance_type = var.Instance_type
  provisioner "local-exec" {
    command = "echo 'The server is ready to use' >> terraform_log.txt"
  }
  tags = {
    Name = "Ubuntu Linux"
  }
}

resource "null_resource" "end_exec" {
  provisioner "local-exec" {
    command = "echo \"Finished Terraform execution: $(date)\" >> terraform_log.txt"
  }
  depends_on = [null_resource.start_exec, aws_instance.Ubuntu_Linux]
}

