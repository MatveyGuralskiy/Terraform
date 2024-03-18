provider "aws" {}

resource "aws_instance" "Amazon_Linux" {
  ami                    = "ami-06f64fb0331ab61a0"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.HTTP-HTTPS.id]
  user_data              = <<EOF
#!/bin/bash
# Script to display 2 variables of an instance in an HTML website

echo "Starting the script automatically"

#Install Apache web server
yum -y update
yum -y install httpd
TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")
userIP=$(curl http://169.254.169.254/latest/meta-data/local-ipv4 -H "X-aws-ec2-metadata-token: $TOKEN")
userPublic=$(curl http://169.254.169.254/latest/meta-data/public-ipv4 -H "X-aws-ec2-metadata-token: $TOKEN")

# Generate HTML content
html_content=$(cat <<-EOF_SCRIPT
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Terraform Webserver</title>
    <style>
        h1 {
            font-family: monospace;
            font-size: 70px;
            text-align: center;
        }
        p {
            font-family: monospace;
            font-size: 35px;
            text-align: center;
        }
        body {
            background-color: darkorchid;
        }
    </style>
</head>
<body>
    <h1>Terraform Webserver</h1>
    <p>Your Private IP: $userIP and Public IP: $userPublic</p>
    <br>
    <p>Created by Matvey Guralskiy</p>
</body>
</html>
EOF_SCRIPT
)

# Save HTML content to index.html
echo "$html_content" > /var/www/html/index.html

# Start Apache web server and enable it to start on boot
service httpd start
chkconfig httpd on

echo "Script finished successfully"

EOF
  tags = {
    Name       = "Amazon Linux"
    Enviroment = "Production"
    Owner      = "Matvey Guralskiy"
    Created    = "Terraform"
  }
}

resource "aws_security_group" "HTTP-HTTPS" {
  name        = "HTTP-HTTPS"
  description = "Security group for Apache Webserver"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress { #any traffic
    from_port   = 0
    to_port     = 0
    protocol    = "-1" #any protocol
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "HTTP-HTTPS"
    Owner   = "Matvey Guralskiy"
    Created = "Terraform"
  }
}
