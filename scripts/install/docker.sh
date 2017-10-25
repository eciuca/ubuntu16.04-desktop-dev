#!/bin/sh
. /home/vagrant/scripts/utils/isInstalled.sh

package=docker-ce

install_docker() {
	if [ $(isInstalled $package) ]; 
		then return;
		else echo "Installing and configuring Docker...";
	fi

	# CLEANUP
	apt-get remove -y docker docker-engine docker.io

	# CONFIGURE
	apt-get install -y apt-transport-https ca-certificates software-properties-common
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
	apt-key fingerprint 0EBFCD88
	add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

	apt-get update

	# INSTALL
	apt-get install -y $package

	# CONFIGURE
	gpasswd -a vagrant docker
}