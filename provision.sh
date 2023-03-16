#!/bin/bash
echo "Installing yum-utils"
sudo yum install -y yum-utils
echo "Downloading Docker Engine"
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
echo "Installing Docker CE"
sudo yum -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
echo "Starting Docker Service"
sudo systemctl start docker
sudo systemctl enable docker
