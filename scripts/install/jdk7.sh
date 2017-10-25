#!/bin/sh
. /home/vagrant/scripts/utils/isInstalled.sh

package=openjdk-7-jdk

install_jdk7() {
	if [ $(isInstalled $package) ]; 
		then return;
		else echo "Installing and configuring Open JDK 7...";
	fi

	# INSTALL
	apt-get install -y $package
}