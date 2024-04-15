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
html_content=$(cat <<-EOF
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
            background-color: mediumpurple;
        }
    </style>
</head>
<body>
    <h1>Terraform Webserver with LoadBalancer</h1>
    <p>This Webserver has certificate SSL/TLS (HTTPS)</p>
    <p>Your Private IP: $userIP and Public IP: $userPublic</p>
    <p>Created by Matvey Guralskiy using static external file <strong>script.sh</strong></p>
</body>
</html>
EOF
)

# Save HTML content to index.html
echo "$html_content" > /var/www/html/index.html

# Start Apache web server and enable it to start on boot
service httpd start
chkconfig httpd on

echo "Script finished successfully"
