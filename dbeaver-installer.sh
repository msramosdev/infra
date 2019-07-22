!/bin/bash

echo "Installing DBeaver..."
wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | apt-key add -
echo "deb https://dbeaver.io/debs/dbeaver-ce /" | tee /etc/apt/sources.list.d/dbeaver.list
apt-get update && apt-get install dbeaver-ce
