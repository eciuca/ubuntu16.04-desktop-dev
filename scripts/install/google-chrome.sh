#!/bin/sh
. /home/vagrant/scripts/utils/isInstalled.sh

package=google-chrome-stable

install_google-chrome() {
	if [ $(isInstalled $package) ]; 
		then return;
		else echo "Installing and configuring Google Chrome...";
	fi

	# PREPARE
	echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list
	wget https://dl.google.com/linux/linux_signing_key.pub
	apt-key add linux_signing_key.pub

	apt-get update

	# INSTALL
	apt-get install -y $package
}