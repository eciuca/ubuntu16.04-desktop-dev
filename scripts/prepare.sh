
function prepare() 
{ 
	ln -s /home/vagrant/scripts/utils/install.sh ~/install.sh

	chmod +x ~/scripts/*.sh
	chmod +x ~/scripts/utils/*.sh
	chmod +x ~/scripts/install/*.sh

	apt-get autoremove -y
}