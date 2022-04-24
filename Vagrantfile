Vagrant.configure("2") do |config|
  # Firewall
  # config.vm.define "firewall" do |firewall|
  #   firewall.vm.hostname = "firewall"
  #   firewall.vm.box = "cmad/pfsense"
  #   firewall.vm.provider "virtualbox" do |vb|
  #     vb.name = "Firewall"
  #     vb.cpus = 1
  #     vb.memory = 1024
  #     vb.check_guest_additions = false
  #     vb.gui = false
  #   end
  #   firewall.vm.network :private_network,
  #     name: "VirtualBox Host-Only Ethernet Adapter"
  #     ip: "192.168.5.254", 
  #     netmask: "255.255.255.0"
  #   firewall.vm.communicator = "ssh"
  # end

  # Domain Controller
  config.vm.define "dc" do |dc|
    dc.vm.hostname = "dc1"
    dc.vm.box = "salesforce/server2019"
    dc.vm.provider "virtualbox" do |vb|
      vb.name = "Domain-Controller"
      vb.cpus = 2
      vb.memory = 2048
      vb.check_guest_additions = false
      vb.gui = true
    end
    dc.vm.network :private_network,
      name: "VirtualBox Host-Only Ethernet Adapter",
      ip: "192.168.5.10",
      netmask: "255.255.255.0"
    dc.vm.communicator = "winrm"
    dc.vm.provision "shell", inline: 'New-Item -Type Directory -Path "C:\Tools"'
  end

  # Member Server
  # config.vm.define "ms" do |ms|
  #   ms.vm.hostname = "ms1"
  #   ms.vm.box = "salesforce/server2019"
  #   ms.vm.provider "virtualbox" do |vb|
  #     vb.name = "Member-Server"
  #     vb.cpus = 1
  #     vb.memory = 1024
  #     vb.check_guest_additions = false
  #     vb.gui = true
  #   end
  #   ms.vm.network :private_network,
  #     name: "VirtualBox Host-Only Ethernet Adapter",
  #     ip: "192.168.5.11", 
  #     netmask: "255.255.255.0"
  #   ms.vm.communicator = "winrm"
  # end

  # Windows Event Collector (WEC) Server
  # config.vm.define "wec" do |wec|
  #   wec.vm.hostname = "wec"
  #   wec.vm.box = "salesforce/server2019"
  #   wec.vm.provider "virtualbox" do |vb|
  #     vb.name = "WEC-Server"
  #     vb.cpus = 2
  #     vb.memory = 2048
  #     vb.check_guest_additions = false
  #     vb.gui = true
  #   end
  #   wec.vm.network :private_network,
  #     name: "VirtualBox Host-Only Ethernet Adapter",
  #     ip: "192.168.5.12", 
  #     netmask: "255.255.255.0"
  #   wec.vm.communicator = "winrm"
  # end

  # Workstation
  # config.vm.define "ws" do |ws|
  #   ws.vm.hostname = "ws1"
  #   ws.vm.box = "salesforce/server2019"
  #   ws.vm.provider "virtualbox" do |vb|
  #     vb.name = "Workstation"
  #     vb.cpus = 2
  #     vb.memory = 2048
  #     vb.check_guest_additions = false
  #     vb.gui = true
  #   end
  #   ws.vm.network :private_network,
  #     name: "VirtualBox Host-Only Ethernet Adapter",
  #     ip: "192.168.5.69", 
  #     netmask: "255.255.255.0"
  #   ws.vm.communicator = "winrm"
  # end

  # Security Incident & Event Management (SIEM) Server
  # config.vm.define "siem" do |siem|
  #   siem.vm.hostname = "siem"
  #   siem.vm.box = "salesforce/server2019"
  #   siem.vm.provider "virtualbox" do |vb|
  #     vb.name = "SIEM-Server"
  #     vb.cpus = 2
  #     vb.memory = 2048
  #     vb.check_guest_additions = false
  #     vb.gui = true
  #   end
  #   siem.vm.network :private_network,
  #     name: "VirtualBox Host-Only Ethernet Adapter",
  #     ip: "192.168.5.100", 
  #     netmask: "255.255.255.0"
  #   siem.vm.communicator = "ssh"
  # end

  # Adversary
  config.vm.define "adversary" do |adversary|
    adversary.vm.hostname = "adversary"
    adversary.vm.box = "kalilinux/rolling"
    adversary.vm.provider "virtualbox" do |vb|
      vb.name = "Adversary"
      vb.cpus = 2
      vb.memory = 4096
      vb.check_guest_additions = false
      vb.gui = true
    end
    adversary.vm.network :private_network,
      name: "VirtualBox Host-Only Ethernet Adapter",
      ip: "192.168.5.86", 
      netmask: "255.255.255.0"
    adversary.vm.communicator = "ssh"
  end
end