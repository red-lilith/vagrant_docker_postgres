# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "dockervm"
  config.vm.provider :virtualbox do |vb|
         vb.customize [ 'modifyvm', :id, '--name', 'Dockervm']
  end
 # config.ssh.password = 'vagrant'
  config.vm.provision "docker", images: ["postgres"]
  config.vm.network "forwarded_port", guest: 7001, host: 7001
  config.vm.synced_folder "./data/", "/home/vagrant/data/"
  config.vm.provision "shell", path: "script.sh"
end

