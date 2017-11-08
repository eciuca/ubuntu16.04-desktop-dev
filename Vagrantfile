Vagrant.configure(2) do |config|

  config.vm.box = "boxcutter/ubuntu1604-desktop"
  #config.vm.box_version = "2.0.26"

  config.vm.provider "virtualbox" do |vb|
    #   # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    #
    #   # Customize the amount of memory on the VM:
    vb.memory = "8192"
    config.vm.synced_folder "../synced_folders/vagrant_home", "/home/vagrant"
  end

  config.vm.provision "file", source: "./scripts", destination: "/tmp/vagrant/scripts"

  config.vm.provision "shell", inline: <<-SHELL

    . /tmp/vagrant/scripts/install/google-chrome.sh
    . /tmp/vagrant/scripts/install/opera.sh
    . /tmp/vagrant/scripts/install/sublime-text-3.sh
    . /tmp/vagrant/scripts/install/git.sh
    . /tmp/vagrant/scripts/install/docker.sh
    . /tmp/vagrant/scripts/install/jdk7.sh
    . /tmp/vagrant/scripts/install/jdk8.sh
    . /tmp/vagrant/scripts/install/maven.sh
    . /tmp/vagrant/scripts/install/node-and-npm.sh
    . /tmp/vagrant/scripts/install/angular-cli.sh
    . /tmp/vagrant/scripts/install/pip.sh
    . /tmp/vagrant/scripts/install/aws-cli.sh
    . /tmp/vagrant/scripts/install/mongo.sh
    . /tmp/vagrant/scripts/install/intellij-idea2.sh
    . /tmp/vagrant/scripts/install/softether-vpn.sh
    . /tmp/vagrant/scripts/install/guake.sh
    . /tmp/vagrant/scripts/prepare.sh
    . /tmp/vagrant/scripts/utils/install-packages.sh

    systemctl disable apt-daily.service
    systemctl disable apt-daily.timer
    systemctl disable unattended-upgrades.service

    prepare

    PACKAGES=(guake opera sublime-text-3 git docker jdk7 jdk8 maven node-and-npm angular-cli pip aws-cli mongo softether-vpn google-chrome)

    install-packages $PACKAGES

    #echo "Executing apt-get upgrade -y >>>>>>>>>>>>>>>>>>>>>>>"
    #DEBIAN_FRONTEND=noninteractive
    #apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade

    systemctl enable apt-daily.service
    systemctl enable apt-daily.timer
    systemctl enable unattended-upgrades.service

   SHELL
end