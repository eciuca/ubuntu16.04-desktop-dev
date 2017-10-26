#!/bin/sh
. /home/vagrant/scripts/utils/isInstalled.sh

install_jdk7() {
	package=openjdk-7-jdk

	if isInstalled $package; then return; fi
	echo "Installing and configuring Open JDK 7 (package: $package)..."

	# INSTALL
	apt-get install -y $package
}