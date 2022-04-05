#!/bin/bash
sudo apt-get update 
sudo apt upgrade -y
sudo apt-get install -y filezilla vim x2goclient git openssh-server
snap install slack
snap install pycharm-community --classic
sudo snap install gitkraken --classic

sudo wget -O - https://repo.fortinet.com/repo/6.4/ubuntu/DEB-GPG-KEY | sudo apt-key add -
sudo tee /etc/apt/sources.list.d/forticlient.list<<EOF
deb [arch=amd64] https://repo.fortinet.com/repo/7.0/ubuntu/ /bionic multiverse
EOF
sudo apt update
sudo apt install forticlient -y
