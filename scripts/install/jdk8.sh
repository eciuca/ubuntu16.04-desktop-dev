#!/bin/sh
. /home/vagrant/scripts/utils/isInstalled.sh

package=openjdk-8-jdk

install_jdk8() {
	if [ $(isInstalled $package) ]; 
		then return;
		else echo "Installing and configuring Open JDK 8...";
	fi

	# INSTALL
	apt-get install -y $package
}