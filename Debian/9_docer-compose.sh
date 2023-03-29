#!/bin/bash

sudo apt-get update

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg
    
sudo mkdir -m 0755 -p /etc/apt/keyrings    

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

sudo apt-get update

sudo chmod a+r /etc/apt/keyrings/docker.gpg

sudo apt install docker

sudo apt install docker-compose


sudo groupadd docker

sudo usermod -aG docker vood

sudo systemctl enable docker.service
sudo systemctl enable containerd.service

   
docker version
