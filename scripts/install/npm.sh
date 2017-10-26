#!/bin/sh
. /home/vagrant/scripts/utils/isInstalled.sh

install_npm() {
	package=npm

	if isInstalled $package; then return; fi
	echo "Installing and configuring Node Package Manager (package: $package)..."

	# INSTALL
	apt-get install -y $package
}