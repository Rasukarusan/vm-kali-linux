Vagrant.configure("2") do |config|
    config.vm.box = "y473m1n4h4r3/kali-linux-2018"
    config.vm.box_version = "0.0.1"
    config.vm.network :private_network, ip: "192.168.56.100"
    config.vm.provider :virtualbox do |v|
        v.customize [ "modifyvm", :id, "--memory", 2048]
        v.customize [ "modifyvm", :id, "--nic2","NatNetwork"]
        v.customize [ "modifyvm", :id, "--nictype2","82540EM"]
        v.customize [ "modifyvm", :id, "--nicpromisc2","allow-all"]
    end
    config.vm.provision "shell", :path => "provision.sh"
    config.vm.synced_folder "./workspace","/home/vagrant/workspace", mount_options: ["dmode=777", "fmode=777"]
end
