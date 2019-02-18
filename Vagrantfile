Vagrant.configure("2") do |config|
    config.vm.box = "y473m1n4h4r3/kali-linux-2018"
    config.vm.box_version = "0.0.1"
#    config.ssh.username = 'root'
#    config.ssh.password = 'vagrant'
    # config.ssh.insert_key = 'false'
#config.vm.synced_folder "./local-workspace", "/home/vagrant/local-workspace",owner: "vagrant", group: "vagrant",  mount_options: ['dmode=777','fmode=755']
    config.vm.provision "shell", :path => "provision.sh"
    config.vm.synced_folder "workspace","/home/vagrant/workspace", owner: "vagrant", group: "vagrant", mount_options: ["dmode=777", "fmode=777"]
end
