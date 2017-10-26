#!/bin/sh
. /home/vagrant/scripts/utils/isInstalled.sh

install_nodejs() {
	package=nodejs

	if isInstalled $package; then return; fi
	echo "Installing and configuring Node JS (package: $package)..."

	# PREPARE
	curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh | bash -E nodesource_setup.sh

	# INSTALL
	apt-get update && apt-get install -y $package build-essential
}