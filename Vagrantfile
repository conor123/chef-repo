NODE_SCRIPT = <<EOF.freeze
  echo "Bootstrapping node..."
  # ensure the time is up to date
  yum update
  yum -y install ntp
  yum -y install tree
  systemctl start ntpd
  systemctl enable ntpd
  #curl https://omnitruck.chef.io/install.sh | sudo bash -s -- -P chefdk -c stable
EOF

Vagrant.configure(2) do |config|
	config.vm.define "devops-go-box" do |box|
		box.vm.box = "centos/7"
        #box.vm.network "private_network", ip: "192.168.256.0"
        #box.vm.hostname = "devops-go-box"
        box.vm.provision :shell, inline: NODE_SCRIPT.dup

        box.vm.provider "virtualbox" do |v|
          v.memory = 4096
          v.cpus = 2
        end
	end

    config.vm.provision "chef_client" do |chef|
        chef.channel = "stable"
        chef.version = "12.10.24"
        chef.chef_server_url = "https://api.chef.io/organizations/conorryan"
        chef.validation_key_path = "/Users/cr/devops/chef-repo/.chef/conor.pem"
        chef.validation_client_name = "conor"
    end
end