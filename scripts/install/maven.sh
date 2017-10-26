#!/bin/sh
. /home/vagrant/scripts/utils/isInstalled.sh

package=maven

install_maven() {
        if isInstalled $package; then return; fi
        echo "Installing and configuring Maven (package: $package)..."

        # INSTALL
        apt-get install -y $package
}