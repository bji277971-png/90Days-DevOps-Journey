#!/bin/bash

if [ "$EUID" -ne 0 ]
then
	echo "Please run as root"
	exit 1
fi

PACKAGES="nginx curl wget"

for PKG in $PACKAGES
do
	if dpkg -s $PKG >/dev/null 2>&1
	then
		echo "$PKG is already installed."
	else
		echo "Installing $PKG..."
		apt update
		apt install
		apt install -y $PKG
	fi
done
		

