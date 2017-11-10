#!/bin/bash

install_gradle() {

	if [ -e "/usr/local/gradle" ]; then return; fi

	curl -fsS https://services.gradle.org/distributions/gradle-4.3.1-bin.zip

	unzip gradle-4.3.1-bin.zip -d /usr/local

	ln -s /usr/local/gradle-4.3.1 /usr/local/gradle

	echo "export GRADLE_HOME=/usr/local/gradle" >> /etc/profile.d/gradle.sh
	echo "export PATH=${GRADLE_HOME}/bin:${PATH}" >> /etc/profile.d/gradle.sh
	
	source /etc/profile

}
