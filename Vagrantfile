
Vagrant.configure("2") do |config|

  config.vm.box = "centos/7"

  config.vm.provision "shell", path:"script.sh"

  config.vm.provision "file", source:"file_mover.service", destination: "~/file_mover.service"

end
