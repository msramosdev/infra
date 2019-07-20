#!/bin/bash

echo "Installing Docker"
bash ../package-installer.sh apt-transport-https
bash ../package-installer.sh ca-certificates
bash ../package-installer.sh curl
bash ../package-installer.sh gnupg2
bash ../package-installer.sh software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
apt-get install docker-ce docker-ce-cli containerd.io
