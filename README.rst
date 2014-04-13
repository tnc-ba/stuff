stuff
=====

stuff like Vagrant files, configs, etc...

Development Setup
------------------

First, get vagrant: http://www.vagrantup.com/

Then clone both repositories stuff and swidGenerator: ::
    
    git clone https://github.com/tnc-ba/swidGenerator
    git clone https://github.com/tnc-ba/stuff
    
Setup up box: ::

    cd /path/to/stuff/Vagrant
    vagrant up
    
Finally SSH into virtual machine: ::

    vagrant ssh
    
Gracefully Shutdown VM: ::

    vagrant halt
    
Or destroy it: ::
    
    vagrant destroy
    
Changes to the bootstrap.sh provisioning script can be applied without destroy and recreating VM: ::
    
    vagrant reload --provision
    
Config
-------

- The machine is reachable at 10.10.10.4
- A shared folder to the cloned swidGenerator repo is mapped to /home/vagrant/swidGenerator inside the VM (this allows simple development on the host or on the virtual machine).
- The bash script bootstrap.sh is used as the provisioner. Add additional OS dependecies there.
