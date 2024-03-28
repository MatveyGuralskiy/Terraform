# IPv6 in AWS INSTANCES MAKES CONFLICTS, REMOVE THIS LINES
# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "SECURITY-GROUP"
resource "aws_security_group" "SSH-IMPORT" {
  description = "Security group for Database"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 22
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 22
  }]
  name                   = "SSH"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags = {
    Environment = "Production"
    From        = "Terraform"
    Name        = "SSH"
    Owner       = "Matvey Guralskiy"
    Type        = "Database"
  }
  tags_all = {
    Environment = "Production"
    From        = "Terraform"
    Name        = "SSH"
    Owner       = "Matvey Guralskiy"
    Type        = "Database"
  }
  vpc_id = "VPC"
}

# __generated__ by Terraform from "SECURITY-GROUP"
resource "aws_security_group" "HTTP-HTTPS-IMPORT" {
  description = "Security group for Webserver"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 443
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 443
    }, {
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 80
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 80
  }]
  name                   = "HTTP-HTTPS"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags = {
    Environment = "Development"
    From        = "Terraform"
    Name        = "HTTP-HTTPS"
    Owner       = "Matvey Guralskiy"
    Type        = "Webserver"
  }
  tags_all = {
    Environment = "Development"
    From        = "Terraform"
    Name        = "HTTP-HTTPS"
    Owner       = "Matvey Guralskiy"
    Type        = "Webserver"
  }
  vpc_id = "VPC"
}

# __generated__ by Terraform
resource "aws_instance" "Amazon_Linux_1_IMPORT" {
  ami                                  = "ami-026a7b422adec4b0a"
  associate_public_ip_address          = true
  availability_zone                    = "eu-west-3c"
  disable_api_stop                     = false
  disable_api_termination              = false
  ebs_optimized                        = false
  get_password_data                    = false
  hibernation                          = false
  host_id                              = null
  host_resource_group_arn              = null
  iam_instance_profile                 = null
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  key_name                             = null
  monitoring                           = false
  placement_group                      = null
  placement_partition_number           = 0
  private_ip                           = "PRIVATE_IP"
  secondary_private_ips                = []
  security_groups                      = ["HTTP-HTTPS"]
  source_dest_check                    = true
  subnet_id                            = "SUBNET"
  tags = {
    Environment = "Development"
    From        = "Terraform"
    Name        = "Amazon Linux 1"
    Owner       = "Matvey Guralskiy"
    Type        = "Webserver"
  }
  tags_all = {
    Environment = "Development"
    From        = "Terraform"
    Name        = "Amazon Linux 1"
    Owner       = "Matvey Guralskiy"
    Type        = "Webserver"
  }
  tenancy                     = "default"
  user_data                   = null
  user_data_base64            = null
  user_data_replace_on_change = null
  volume_tags                 = null
  vpc_security_group_ids      = ["SECURITY-GROUP"]
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }
  cpu_options {
    amd_sev_snp      = null
    core_count       = 1
    threads_per_core = 1
  }
  credit_specification {
    cpu_credits = "standard"
  }
  enclave_options {
    enabled = false
  }
  maintenance_options {
    auto_recovery = "default"
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }
  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }
  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 3000
    kms_key_id            = null
    tags = {
      From   = "Terraform"
      Owner  = "Matvey Guralskiy"
      Status = "Imported"
    }
    tags_all = {
      From   = "Terraform"
      Owner  = "Matvey Guralskiy"
      Status = "Imported"
    }
    throughput  = 125
    volume_size = 8
    volume_type = "gp3"
  }
}

# __generated__ by Terraform
resource "aws_instance" "Amazon_Linux_2_IMPORT" {
  ami                                  = "ami-026a7b422adec4b0a"
  associate_public_ip_address          = true
  availability_zone                    = "eu-west-3c"
  disable_api_stop                     = false
  disable_api_termination              = false
  ebs_optimized                        = false
  get_password_data                    = false
  hibernation                          = false
  host_id                              = null
  host_resource_group_arn              = null
  iam_instance_profile                 = null
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  key_name                             = null
  monitoring                           = false
  placement_group                      = null
  placement_partition_number           = 0
  private_ip                           = "PRIVATE_IP"
  secondary_private_ips                = []
  security_groups                      = ["SSH"]
  source_dest_check                    = true
  subnet_id                            = "SUBNET"
  tags = {
    Environment = "Production"
    From        = "Terraform"
    Name        = "Amazon Linux 2"
    Owner       = "Matvey Guralskiy"
    Type        = "Database"
  }
  tags_all = {
    Environment = "Production"
    From        = "Terraform"
    Name        = "Amazon Linux 2"
    Owner       = "Matvey Guralskiy"
    Type        = "Database"
  }
  tenancy                     = "default"
  user_data                   = null
  user_data_base64            = null
  user_data_replace_on_change = null
  volume_tags                 = null
  vpc_security_group_ids      = ["SECURITY-GROUP"]
  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }
  cpu_options {
    amd_sev_snp      = null
    core_count       = 1
    threads_per_core = 1
  }
  credit_specification {
    cpu_credits = "standard"
  }
  enclave_options {
    enabled = false
  }
  maintenance_options {
    auto_recovery = "default"
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }
  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }
  root_block_device {
    delete_on_termination = true
    encrypted             = false
    iops                  = 3000
    kms_key_id            = null
    tags = {
      From  = "Terraform"
      Owner = "Matvey Guralskiy"
    }
    tags_all = {
      From  = "Terraform"
      Owner = "Matvey Guralskiy"
    }
    throughput  = 125
    volume_size = 8
    volume_type = "gp3"
  }
}
