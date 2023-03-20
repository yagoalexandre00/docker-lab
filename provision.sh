#!/bin/bash
echo "Installing yum-utils"
sudo dnf install -y yum-utils
echo "Downloading Docker Engine"
sudo dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
echo "Installing Docker CE"
sudo dnf -y install docker-ce docker-ce-cli containerd.io
echo "Enabling and dtarting Docker Service"
sudo systemctl start docker
sudo systemctl enable docker

echo "Adding common user to docker group"
sudo usermod -aG docker $USER
sudo systemctl restart docker