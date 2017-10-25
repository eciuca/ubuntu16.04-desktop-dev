#!/bin/sh
. /home/vagrant/scripts/utils/isInstalled.sh

package=git-all

install_git() {
	if [ $(isInstalled $package) ]; 
		then exit
		else echo "Installing and configuring Git..."
	fi

	# CLEANUP
	apt-get purge -y git

	# INSTALL
	apt-get install -y git-daemon-sysvinit git-all

	# CONFIGURE
	git config --global user.name "Emanuel Ciuca"
	git config --global user.email "emanuel@webgenerals.com"

	git config --global alias.co checkout
	git config --global alias.br branch
	git config --global alias.ci commit
	git config --global alias.st status
	git config --global alias.unstage 'reset HEAD --'
	git config --global alias.last 'log -1 HEAD'
	git config --global push.default simple
}