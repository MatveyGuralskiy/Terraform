provider "aws" {
  region = var.Region
}

#Generate Password
resource "random_string" "password" {
  length           = 15
  special          = true
  override_special = "%^&$#@"
  keepers = {
    first-keeper = var.Name
  }
}

#Save password to SSM
resource "aws_ssm_parameter" "password_save" {
  name        = "/production/mysql"
  description = "Password for MySQL"
  type        = "SecureString"
  value       = random_string.password.result
}

#Take password from SSM
data "aws_ssm_parameter" "my_password" {
  name       = "/production/mysql"
  depends_on = [aws_ssm_parameter.password_save]
}

resource "aws_db_instance" "default" {
  identifier           = "production-database"
  allocated_storage    = 10
  db_name              = "my_database"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "administrator"
  password             = data.aws_ssm_parameter.my_password.value
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  apply_immediately    = true

  tags = {
    Name        = "Database"
    Owner       = "Matvey Guralskiy"
    Environment = "Production"
    From        = "Terraform"
  }
}
