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

  config.vm.provision "shell", inline: <<-SHELL

    ### CLEANUP

    # GIT CLEANUP
    apt-get purge git

    # DOCKER CLEANUP
    apt-get remove -y docker docker-engine docker.io

    apt-get autoremove -y

    ### PRE-REQUISITES

    # GOOGLE CHROME
    echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list
    wget https://dl.google.com/linux/linux_signing_key.pub
    apt-key add linux_signing_key.pub

    # SUBLIME TEXT 3
    wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
    echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list

    # DOCKER
    apt-get install -y apt-transport-https ca-certificates software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
    apt-key fingerprint 0EBFCD88
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    
    apt-get update && apt-get upgrade

    # INSTALL GIT
    apt-get install -y git-daemon-sysvinit git-all

    git config --global user.name "Emanuel Ciuca"
    git config --global user.email "emanuel@webgenerals.com"

    git config --global alias.co checkout
    git config --global alias.br branch
    git config --global alias.ci commit
    git config --global alias.st status
    git config --global alias.unstage 'reset HEAD --'
    git config --global alias.last 'log -1 HEAD'
    git config --global push.default simple

    # INSTALL JDK 8
    apt-get install -y openjdk-8-jdk

    # INSTALL Maven 3
    apt-get install -y maven

    # INSTALL DOCKER
    apt-get install -y docker-ce
    gpasswd -a vagrant docker

    # INSTALL NODE
    apt-get install -y nodejs

    # INSTALL NODE
    apt-get install -y npm

    # INSTALL DOCKER
    
    # INSTALL SUBLIME TEXT 3
    apt-get install -y sublime-text

    # INSTALL GOOGLE CHROME
    apt-get install -y google-chrome-stable
   SHELL
end