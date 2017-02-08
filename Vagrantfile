# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define "vm1" do |vm1|
    vm1.vm.box = "centos/6"
    vm1.ssh.insert_key = false
    vm1.vm.hostname = 'vm1'
    vm1.vm.network :private_network, ip: "192.168.33.23"


    vm1.vm.provider :virtualbox do |v1|
      v1.name = "vm1"
      v1.memory = 1024
      v1.cpus = 1
      v1.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v1.customize ["modifyvm", :id, "--ioapic", "on"]
    end
  end

  config.vm.define "vm2" do |vm2|
    vm2.vm.box = "centos/6"
    vm2.ssh.insert_key = false
    vm2.vm.hostname = 'vm2'
    vm2.vm.network :private_network, ip: "192.168.33.24"

    vm2.vm.provider :virtualbox do |v2|
      v2.name = "vm2"
      v2.memory = 1024
      v2.cpus = 1
      v2.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v2.customize ["modifyvm", :id, "--ioapic", "on"]
    end

  end

  config.vm.define "vm3" do |vm3|
    vm3.vm.box = "centos/6"
    vm3.ssh.insert_key = false
    vm3.vm.hostname = 'vm3'
    vm3.vm.network :private_network, ip: "192.168.33.25"

    vm3.vm.provider :virtualbox do |v3|
      v3.name = "vm3"
      v3.memory = 1024
      v3.cpus = 1
      v3.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v3.customize ["modifyvm", :id, "--ioapic", "on"]
    end

  end


  
end