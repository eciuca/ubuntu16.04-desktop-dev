#!/bin/sh
. /home/vagrant/scripts/utils/isInstalled.sh

package=npm

install_npm() {
	if [ $(isInstalled '$package') ]; 
		then return;
		else echo "Installing and configuring Node Package Manager...";
	fi

	# INSTALL
	apt-get install -y $package
}