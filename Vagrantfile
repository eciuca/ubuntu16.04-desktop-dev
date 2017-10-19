Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/xenial64"

  config.vm.provider "virtualbox" do |vb|
    #   # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    #
    #   # Customize the amount of memory on the VM:
    vb.memory = "8192"
  end

  config.vm.provision "shell", inline: <<-SHELL
    apt-get update

    # INSTALL GIT
    apt-get install -y git-all
    git config --global user.name "Emanuel Ciuca"
    git config --global user.email "emanuel@webgenerals.com"

    # INSTALL JDK 8
    sudo apt-get install -y openjdk-8-jdk

   SHELL
end