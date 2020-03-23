#!/bin/bash
echo "**** Begin installing Docker CE"

sudo apt-get update

sudo apt-get install apt-transport-https
sudo apt-get install ca-certificates
sudo apt-get install curl
sudo apt-get install gnupg-agent
sudo apt-get install software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install -y docker-ce=18.06.1~ce~3-0~ubuntu

sudo docker run hello-world

usermod -aG docker vagrant

echo "**** End installing Docker CE"