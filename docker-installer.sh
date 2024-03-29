#!/bin/bash

echo "Installing Docker"
apt-get remove docker docker-engine docker.io containerd runc
apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
apt-get install docker-ce docker-ce-cli containerd.io
bash package-installer.sh docker-compose
