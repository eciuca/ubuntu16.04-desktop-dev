#!/bin/bash

install_nvm() {

	if [ -e "/usr/local/bin/nvm" ]; then return; fi

	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | sh

}
