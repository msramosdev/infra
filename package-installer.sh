#!/bin/bash

echo "Updating repositories.."
if ! apt-get update
then
	echo "Cannot update repositories, please check your /etc/apt/sources.list."
	exit 1
fi
echo "Repositories successfully updated"

echo "Updating installed packages..."
if ! apt-get dist-upgrade -y
then
	echo "Cannot upgrade packages."
	exit 1
fi

echo "Installing $1"
if ! apt-get install $1
then
	echo "Cannot install $1."
	exit 1
fi
echo "$1 successfully installed"
