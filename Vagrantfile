Vagrant.configure('2') do |config|
    config.vm.box = 'ubuntu/trusty64'
    config.vm.hostname = 'chef-server'
    config.vm.network 'private_network', ip: '192.168.10.10'

    config.vm.provision 'chef_solo' do |chef|
        chef.node_name = 'chef-server'
        chef.cookbooks_path = 'cookbooks'
        chef.run_list = [
            'lamp-stack',
            'lamp-stack::apache',
            'lamp-stack::mysql',
            'lamp-stack::php'
        ]
    end
end
