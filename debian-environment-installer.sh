#!/bin/bash

echo "Installing dependencies..."
apt-get install gnupg gnupg2 gnupg1

echo "Installing softwares..."
bash chrome-installer.sh
bash snap-installer.sh
bash dbeaver-installer.sh
bash vscode-installer.sh
bash docker-installer.sh
bash spotify-installer.sh
apt-get install terminator -y
snap install postman
snap install intellij-idea-community --classic --edge
snap install gitkraken

ln -s /var/lib/snapd/desktop/applications ~/.local/share/applications

echo "Softwares successfully installed"
