#!/bin/sh
. /home/vagrant/scripts/utils/isInstalled.sh

package=maven

install_maven() {
	if [ $(isInstalled $package) ]; 
		then return;
		else echo "Installing and configuring Maven...";
	fi

	# INSTALL
	apt-get install -y $package
}