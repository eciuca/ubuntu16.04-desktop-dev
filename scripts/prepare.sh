#!/bin/sh
prepare() 
{	
	vagrant_home=/tmp/vagrant
	chmod +x $vagrant_home/scripts/*.sh
	chmod +x $vagrant_home/scripts/utils/*.sh
	chmod +x $vagrant_home/scripts/install/*.sh

	apt-get install htop

	apt-get autoremove -y
}