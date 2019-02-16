# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "dockervm"
  config.vm.provider :virtualbox do |vb|
         vb.customize [ 'modifyvm', :id, '--name', 'Dockervm']
  end
  config.vm.provision "docker", images: ["postgres"]
  config.vm.provision "shell", path: "script.sh"
  config.vm.network "forwarded_port", guest: 80, host: 8000
  config.vm.synced_folder "./data", "/data"
end

