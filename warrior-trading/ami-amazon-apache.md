## Refresh repo list.
sudo yum update -y
- -y to install without your permission.

## Install Apache
sudo yum install httpd -y

## Troubleshooting
sudo service httpd status
sudo service httpd start
sudo service httpd stop

## LAMP Guide
Use the following guide to install LAMP: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/install-LAMP.html

### The Gist of LAMP installation
- sudo yum install -y httpd24 php70 mysql56-server php70-mysqlnd
- sudo yum install php70-mbstring.x86_64 php70-zip.x86_64 -y

