#!/bin/bash

echo "Installing Visual Studio Code..."
bash package-installer.sh software-properties-common
bash package-installer.sh apt-transport-https 
bash package-installer.sh curl
curl -sSl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
bash package-installer.sh code
