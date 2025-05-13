Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"
  
  # Optional: Use private network via DHCP
  config.vm.network "private_network", type: "dhcp"
  
  config.vm.provider "virtualbox" do |vb|
    vb.name = "yolo-vm"
    vb.memory = "1024"     # Use 1024 to avoid resource strain
    vb.cpus = 1            # Start with 1 CPU to avoid Guru error
    
    # Safe VirtualBox options (optional but usually fine)
    vb.customize ["modifyvm", :id, "--nested-hw-virt", "on"]
    vb.customize ["modifyvm", :id, "--vtxvpid", "on"]
    vb.customize ["modifyvm", :id, "--largepages", "off"]
  end
end

