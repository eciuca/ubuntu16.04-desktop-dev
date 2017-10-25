#!/bin/sh

isInstalled() { 
	package=$1
	result=$(dpkg-query --show --showformat='${db:Status-Status}' $package)

	if [ '$result' = 'installed' ]; 
		then 
			echo "$1 is already installed!";
			return 0;
		else 
			return 1;
	fi
}