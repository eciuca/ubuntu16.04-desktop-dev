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

    . /home/vagrant/scripts/install/docker.sh --source-only
    . /home/vagrant/scripts/install/git.sh --source-only
    . /home/vagrant/scripts/install/google-chrome.sh --source-only
    . /home/vagrant/scripts/install/jdk7.sh --source-only
    . /home/vagrant/scripts/install/jdk8.sh --source-only
    . /home/vagrant/scripts/install/maven.sh --source-only
    . /home/vagrant/scripts/install/nodejs.sh --source-only
    . /home/vagrant/scripts/install/npm.sh --source-only
    . /home/vagrant/scripts/install/sublime-text-3.sh --source-only
    . /home/vagrant/scripts/prepare.sh --source-only

    prepare

    install_git
    install_docker
    install_google-chrome
    install_sublime-text-3
    install_jdk7
    install_jdk8
    install_maven
    install_nodejs
    install_npm
    
    apt-get upgrade -y
   SHELL

   # config.vm.provision "shell", "path": "./install-intellij-idea.sh"
end