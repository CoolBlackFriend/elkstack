
Vagrant.configure(2) do |config|

  config.vm.define :elasticsearch1 do |elasticsearch1|
    elasticsearch1.vm.box = "geerlingguy/centos7"
    elasticsearch1.vm.hostname = "elasticsearch1"
    elasticsearch1.vm.network "private_network", ip: "10.0.10.5"
    elasticsearch1.vm.network :forwarded_port, guest: 22, host: 10105
    elasticsearch1.vm.synced_folder ".", "/vagrant"
    elasticsearch1.vm.provider "virtualbox" do |vb|
       vb.memory = 512
       vb.cpus = 1
    end
    elasticsearch1.vm.provision "ansible" do |ansibleelasticsearch1|
      ansibleelasticsearch1.playbook = "elasticsearch.yml"
      ansibleelasticsearch1.sudo = true
    end
  end

  config.vm.define :elasticsearch2 do |elasticsearch2|
    elasticsearch2.vm.box = "geerlingguy/centos7"
    elasticsearch2.vm.hostname = "elasticsearch2"
    elasticsearch2.vm.network "private_network", ip: "10.0.10.6"
    elasticsearch2.vm.network :forwarded_port, guest: 22, host: 10106
    elasticsearch2.vm.synced_folder ".", "/vagrant"
    elasticsearch2.vm.provider "virtualbox" do |vb|
       vb.memory = 512
       vb.cpus = 1
    end
    elasticsearch2.vm.provision "ansible" do |ansibleelasticsearch2|
      ansibleelasticsearch2.playbook = "elasticsearch.yml"
      ansibleelasticsearch2.sudo = true
    end
  end

  config.vm.define :elasticsearch3 do |elasticsearch3|
    elasticsearch3.vm.box = "geerlingguy/centos7"
    elasticsearch3.vm.hostname = "elasticsearch3"
    elasticsearch3.vm.network "private_network", ip: "10.0.10.7"
    elasticsearch3.vm.network :forwarded_port, guest: 22, host: 10107
    elasticsearch3.vm.synced_folder ".", "/vagrant"
    elasticsearch3.vm.provider "virtualbox" do |vb|
       vb.memory = 512
       vb.cpus = 1
    end
    elasticsearch3.vm.provision "ansible" do |ansibleelasticsearch3|
      ansibleelasticsearch3.playbook = "elasticsearch.yml"
      ansibleelasticsearch3.sudo = true
    end
  end

  config.vm.define :kibana do |kibana|
    kibana.vm.box = "geerlingguy/centos7"
    kibana.vm.network "private_network", ip: "10.0.10.9"
    kibana.vm.hostname = "kibana1"
    kibana.vm.network :forwarded_port, guest: 22, host: 10109
    kibana.vm.synced_folder ".", "/vagrant"
    kibana.vm.provider "virtualbox" do |vb|
       vb.memory = 512
       vb.cpus = 1
    end
    kibana.vm.provision "ansible" do |ansiblekibana|
      ansiblekibana.playbook = "kibana.yml"
      ansiblekibana.sudo = true
    end
  end


  config.vm.define :logstash1 do |logstash1|
    logstash1.vm.box = "geerlingguy/centos7"
    logstash1.vm.hostname = "logstash1"
    logstash1.vm.network "private_network", ip: "10.0.10.10"
    logstash1.vm.synced_folder ".", "/vagrant"
    logstash1.vm.provider "virtualbox" do |vb|
       vb.memory = 512
       vb.cpus = 1
    end
    logstash1.vm.provision "ansible" do |ansiblelogstash1|
      ansiblelogstash1.playbook = "logstash.yml"
      ansiblelogstash1.sudo = true
    end
  end


  config.vm.define :logstash2 do |logstash2|
    logstash2.vm.box = "geerlingguy/centos7"
    logstash2.vm.hostname = "logstash2"
    logstash2.vm.network "private_network", ip: "10.0.10.11"
    logstash2.vm.synced_folder ".", "/vagrant"
    logstash2.vm.provider "virtualbox" do |vb|
       vb.memory = 512
       vb.cpus = 1
    end
    logstash2.vm.provision "ansible" do |ansiblelogstash2|
      ansiblelogstash2.playbook = "logstash.yml"
      ansiblelogstash2.sudo = true
    end
  end


  config.vm.define :logstash3 do |logstash3|
    logstash3.vm.box = "geerlingguy/centos7"
    logstash3.vm.hostname = "logstash3"
    logstash3.vm.network "private_network", ip: "10.0.10.12"
    logstash3.vm.synced_folder ".", "/vagrant"
    logstash3.vm.provider "virtualbox" do |vb|
       vb.memory = 512
       vb.cpus = 1
    end
    logstash3.vm.provision "ansible" do |ansiblelogstash3|
      ansiblelogstash3.playbook = "logstash.yml"
      ansiblelogstash3.sudo = true
    end
  end

end

