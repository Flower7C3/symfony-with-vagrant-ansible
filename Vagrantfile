VAGRANTFILE_VM_BOX_NAME = "precise64"
VAGRANTFILE_VM_BOX_URL = "http://files.vagrantup.com/precise64.box"
VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = VAGRANTFILE_VM_BOX_NAME
    config.vm.box_url = VAGRANTFILE_VM_BOX_URL
    config.vm.network :forwarded_port, guest: 8080, host: 8080
    config.vm.network :forwarded_port, guest: 80, host: 8081
    config.vm.network :private_network, ip: "192.168.100.10"
    config.ssh.forward_agent = true
    config.vm.provider :virtualbox do |vb|
	vb.customize ["modifyvm", :id, "--memory", "1024"]
    end
    config.vm.synced_folder ".", "/vagrant",
	disabled: false
    config.vm.provision "ansible" do |ansible|
	ansible.limit = 'all'
	ansible.playbook = "config/provision.yml"
	ansible.inventory_path = "config/hosts"
	ansible.groups = {
	    "webservers" => ["webhost"]
	}
	ansible.verbose = 'vvvv'
    end
end
