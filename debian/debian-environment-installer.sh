#!/bin/bash

echo "Installing softwares..."
bash chrome-installer.sh
bash snap-installer.sh
bash dbeaver-installer.sh
bash vscode-installer.sh
bash docker-installer.sh
snap install postman
snap install intellij-idea-community --classic --edge
sudo snap install gitkraken

echo "Softwares successfully installed"
