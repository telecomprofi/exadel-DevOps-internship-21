#!/bin/bash
set -euo pipefail
IFS=$'\n\t'
# source -official doc https://docs.docker.com/engine/install/ubuntu/
# valid for 64-bit version of Ubuntu
#Ubuntu Hirsute 21.04
#Ubuntu Groovy 20.10
#Ubuntu Focal 20.04 (LTS)
#Ubuntu Bionic 18.04 (LTS)
#Ubuntu Xenial 16.04 (LTS)

#uninstall old version of docker engine
sudo apt-get remove docker docker-engine docker.io containerd runc

# The contents of /var/lib/docker/, including images, containers, volumes, and networks, are preserved
sudo apt-get update
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
#sudo apt-get install -y \
#    apt-transport-https \
#    ca-certificates \
#    curl \
#    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

#sudo apt-get update
#sudo apt-get install -y docker-ce
# post installation steps https://docs.docker.com/engine/install/linux-postinstall/

sudo groupadd docker
sudo usermod -aG docker $USER
#newgrp docker
sudo systemctl enable docker
systemctl is-active -q docker.service  >/dev/null 2>&1 && echo "Docker service is active" || echo "Docker service is inactive"
sudo docker run hello-world

