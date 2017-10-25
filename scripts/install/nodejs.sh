#!/bin/sh
. /home/vagrant/scripts/utils/isInstalled.sh

package=nodejs

install_nodejs() {
	if [ $(isInstalled $package) ]; 
		then return;
		else echo "Installing and configuring Node JS...";
	fi

	# INSTALL
	apt-get install -y $package
}