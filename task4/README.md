# Task4 consists of
* installation of ansible on controller node
* creating inventory file & paybook 
## Task4 Result:
   * tba

### extra tasks:
4.1  <tba>
4.2  <tba>
4.3  <tba>

<pre><code>
#! /bin/bash
# some code goes here
</code></pre>

### Result Extra tasks 4
*  EC2 Instance3: http://18.222.46.70/index.html
  
  
###  Some notes
  * Good source for basic nginx install on ubuntu & copying index.html/css files:
  [article ](https://medium.com/@dbouchare/basic-setup-of-nginx-on-an-ec2-instance-with-ansible-f469af7f56c3 "Basic setup of nginx on an EC2 instance with Ansible")
  
  
  * EC2 AMI Linux2 won't let you install nginx with yum install nginx:
  you hve to first install extras:
<pre><code>
    nginx is available in Amazon Linux Extra topic "nginx1"
    To use, run
    # sudo amazon-linux-extras install nginx1
    Learn more at
    https://aws.amazon.com/amazon-linux-2/faqs/#Amazon_Linux_ExtrasError: Nothing to donon-zero return code
</code></pre>
  * its good idea to update AMI linux with sudo yum update first before exposing it to internet
  
  First Header | Second Header
------------ | -------------
Content from cell 1 | Content from cell 2
Content in the first column | Content in the second column
  
  
