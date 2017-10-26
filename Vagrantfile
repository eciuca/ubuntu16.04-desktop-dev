Vagrant.configure(2) do |config|

  config.vm.box = "boxcutter/ubuntu1604-desktop"
  config.vm.box_version = "17.0907.1"

  config.vm.provider "virtualbox" do |vb|
    #   # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    #
    #   # Customize the amount of memory on the VM:
    vb.memory = "8192"
  end

  config.vm.provision "file", source: "./scripts", destination: "~/scripts"

  config.vm.provision "shell", inline: <<-SHELL

    . /home/vagrant/scripts/install/google-chrome.sh
    . /home/vagrant/scripts/install/opera.sh
    . /home/vagrant/scripts/install/sublime-text-3.sh
    . /home/vagrant/scripts/install/git.sh
    . /home/vagrant/scripts/install/docker.sh
    . /home/vagrant/scripts/install/jdk7.sh
    . /home/vagrant/scripts/install/jdk8.sh
    . /home/vagrant/scripts/install/maven.sh
    . /home/vagrant/scripts/install/nodejs.sh
    . /home/vagrant/scripts/install/npm.sh
    . /home/vagrant/scripts/install/angular-cli.sh
    . /home/vagrant/scripts/install/pip.sh
    . /home/vagrant/scripts/install/aws-cli.sh
    . /home/vagrant/scripts/prepare.sh

    systemctl disable apt-daily.service
    systemctl disable apt-daily.timer
    #systemctl disable unattended-upgrades.service

    prepare

    PACKAGES=(google-chrome opera sublime-text-3 git docker jdk7 jdk8 maven nodejs angular-cli pip aws-cli)
    #PACKAGES=(nodejs)

    for PACKAGE in ${PACKAGES[@]}; do
        echo "-----------------------------Executing script install_$PACKAGE.sh >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
        install_$PACKAGE
    done
    
    echo "Executing apt-get upgrade -y >>>>>>>>>>>>>>>>>>>>>>>"
    apt-get upgrade -y

    #systemctl enable apt-daily.service
    #systemctl enable apt-daily.timer
    #systemctl enable unattended-upgrades.service

   SHELL

   # config.vm.provision "shell", "path": "./install-intellij-idea.sh"
end