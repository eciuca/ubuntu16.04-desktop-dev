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

  config.ssh.forward_agent = true
  config.ssh.forward_x11 = true

  config.vm.provision "shell", inline: <<-SHELL

    # APT REPOS

    # GOOGLE CHROME
    echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list
    wget https://dl.google.com/linux/linux_signing_key.pub
    apt-key add linux_signing_key.pub

    apt-get update

    # INSTALL GIT
    apt-get install -y git-all
    git config --global user.name "Emanuel Ciuca"
    git config --global user.email "emanuel@webgenerals.com"

    git config --global alias.co checkout
    git config --global alias.br branch
    git config --global alias.ci commit
    git config --global alias.st status
    git config --global alias.unstage 'reset HEAD --'
    git config --global alias.last 'log -1 HEAD'

    # INSTALL JDK 8
    sudo apt-get install -y openjdk-8-jdk

    # INSTALL NODE
    curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
    apt-get install -y nodejs
    ln -s /usr/bin/nodejs /usr/bin/node

    # INSTALL NODE
    apt install -y npm

    # INSTALL SUBLIME TEXT 3
    apt-get install -y sublime-text

    # INSTALL GOOGLE CHROME
    apt install -y google-chrome-stable
   SHELL
end