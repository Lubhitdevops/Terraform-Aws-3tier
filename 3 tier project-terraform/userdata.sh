#!/bin/bash
set -e

# Update packages
apt update -y

# Install Apache
apt install -y apache2

# Install AWS CLI
apt install -y awscli

# Get instance ID from metadata
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

# Create a simple HTML page
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
  <title>My Portfolio</title>
  <style>
    @keyframes colorChange {
      0% { color: red; }
      50% { color: green; }
      100% { color: blue; }
    }
    h1 { animation: colorChange 2s infinite; }
  </style>
</head>
<body>
  <h1>Terraform Project Server 1</h1>
  <h2>Instance ID: <span style="color:green">$INSTANCE_ID</span></h2>
  <p>Hello From Lubhit Mawar</p>
</body>
</html>
EOF

# Start and enable Apache
systemctl start apache2
systemctl enable apache2
