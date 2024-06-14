Vagrant.configure("2") do |config|
    config.vm.provision "shell", inline: "echo Provisioning machine...."
  
    config.vm.define "master" do |master|
      master.vm.box = "generic/ubuntu2204"
      master.vm.network "private_network", ip: "192.168.56.6"
      master.vm.synced_folder "./Host-shared-folder", "/vagrant"
      master.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
        vb.cpus = 2
        end
        master.vm.provision "shell", inline: <<-SHELL
        apt update
	apt upgrade
	curl -fsSL https://get.docker.com -o get-docker.sh
 	sudo sh get-docker.sh
	echo "docker installed successfully"
	sudo apt install openjdk-17-jre-headless -y
	echo "installing java successful"
	java --version
	sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
	https://pkg.jenkins.io/debian/jenkins.io-2023.key 
	echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
	 https://pkg.jenkins.io/debian binary/ | sudo tee \
	/etc/apt/sources.list.d/jenkins.list > /dev/null
	sudo apt-get update
	sudo apt-get install jenkins -y
	sudo systemctl enable --now jenkins
	sudo ufw allow 8080
	sudo ufw enable
	sudo ufw enable
	echo "finish setting up jenkins"
	systemctl restart jenkins
	sudo apt install maven -y
	sudo apt install openssh-server openssh-client -y
	sudo systemctl enable --now ssh
        apt install apache2 wget unzip -y
        systemctl start apache2
        systemctl enable apache2
        systemctl restart apache2
      SHELL
    end

config.vm.define "slave1" do |slave1|
      slave1.vm.box = "generic/ubuntu2204"
      slave1.vm.network "private_network", ip: "192.168.56.7"
      slave1.vm.synced_folder "./Host-shared-folder", "/vagrant"
      slave1.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
        vb.cpus = 2
        end
        slave1.vm.provision "shell", inline: <<-SHELL
         apt update
	apt upgrade
	curl -fsSL https://get.docker.com -o get-docker.sh
 	sudo sh get-docker.sh
	echo "docker installed successfully"
	sudo apt install openjdk-17-jre-headless -y
	echo "installing java successful"
	java --version
	#jenkins is not required to be installed in slave
	sudo apt install maven -y
	sudo apt install openssh-server openssh-client -y
	sudo systemctl enable --now ssh
        apt install apache2 wget unzip -y
        systemctl start apache2
        systemctl enable apache2
        systemctl restart apache2
      SHELL
    end
end