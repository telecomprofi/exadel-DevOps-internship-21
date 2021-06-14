# Task2 consists of
* Registering at AWS
* creation of two EC2 instances on free tier with all required security groups
* installation on one of them web-server
* serving static web-page from one of them
## Task2 Result:
   * EC2 instance1: Ubuntu Linux http://18.116.32.222/index.html
   * EC2 instance2: Amazon Linux 3.140.193.49

### extra tasks:
1. Create them in two different VPCs - work in progress
2.  write bash script that install web-server & copies web page "Hello World" and current OS version
3.  userdata script used to install/launch httpd and copy index.html page on EC2 Insance launch:
<pre><code>
#! /bin/bash
yum update -y
yum install httpd wget -y
service httpd start
chkconfig httpd on
cd /var/www/html
touch index.html
echo "Hello World!" >> index.html
echo "<br>" >> index.html
echo echo $(grep -oP '(?<=^PRETTY_NAME=).+' /etc/os-release | tr -d '"') >> index.html
#wget http://telecomprofi.xyz/index.html
</code></pre>

### Result Extra tasks 2. and 3:  EC2 Instance3: http://18.222.46.70/index.html
