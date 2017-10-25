#!/bin/sh
. /home/vagrant/scripts/utils/isInstalled.sh

package=sublime-text

install_sublime-text-3() {
	if [ $(isInstalled '$package') ]; 
		then return;
		else echo "Installing and configuring Sublime Text 3...";
	fi

	# PREPARE
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
	echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list

	apt-get update

	# INSTALL
	apt-get install -y $package
}