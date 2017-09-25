# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 1.6.2"

Vagrant.configure("2") do |config|
    config.vm.define "Ubuntu-16.04 Base"
    config.vm.box = "Ubuntu"
    config.vm.communicator = "ssh"

    # Admin user name and password
    config.ssh.username = "packer"
    config.ssh.password = "packer"

    #config.vm.guest = :linux
    #config.vm.hostname =
    #config.linux.halt_timeout = 15

    #config.vm.network :forwarded_port, guest: 3389, host: 3389, id: "rdp", auto_correct: true
    config.vm.network :forwarded_port, guest: 22, host: 2222, id: "ssh", auto_correct: true

    #config.vm.synced_folder ".", "/vagrant", disabled: true

    # Provider-specific configurations
    config.vm.provider "hyperv" do |v|
        v.cpus = 2
        v.memory = 2048
        v.differencing_disk = true
        v.vmname  = "Ubuntu-16.04 Base"
    end
end
