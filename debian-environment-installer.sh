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
bash package-installer.sh terminator
bash package-installer.sh arc-theme
bash package-installer.sh xclip
bash package-installer.sh sct
snap install postman
snap install intellij-idea-community --classic --edge
snap install gitkraken

ln -s /var/lib/snapd/desktop/applications ~/.local/share/applications

echo "Softwares successfully installed"
