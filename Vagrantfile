Vagrant.configure("2") do |config|
  config.vm.box = "almalinux/8"
  config.vm.hostname = "docker-lab"
  config.vm.provision "shell", path: "provision.sh"
end
