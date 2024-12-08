#this command trying to connect all of the ip es in inventory
ansible all --key-file ~/.ssh/ansible -i inventory -m ping

#creating ansible config file ansible.cfg
#it is going to read by ansible
    [defaults]
    inventory = inventory
    private_key_file = ~/.ssh/ansible

#list of host
    ansible all --list-host



#info about systems
    ansible all -m gather_facts

    #for only one host
     ansible all -m gather_facts --limit <ip>


ansible all -m apt -a update_cache=true

#elivate with admin priviliges
ansible all -m apt -a update_cache=true --become --ask-become-pass


#installing vim-nox
ansible all -m apt -a name=vim-nox --become --ask-become-pass

user@manager-vm:~/ansible$ ansible all -m apt -a name=tmux --become --ask-become-pass

 ansible all -m apt -a name=snapd --become --ask-become-pass
  ansible all -m apt -a "name=snapd  state=latest" --become --ask-become-pass

    ansible all -m apt -a "upgrade=dist" --become --ask-become-pass

###palybook
ansible-playbook --ask-become-pass install_apache.yml
