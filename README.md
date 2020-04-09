
# My Ansible scripts for rebuilding my personal laptop

## Instructions

## Install Ansible
    sudo apt install ansible

## Enable ssh
    sudo systemctl enable ssh

## INstall open-ssh
    sudo apt install openssh-server

## create ssh keys
    ssh-keygen -t rsa -b 4096 -C "rob@localhost"
    ssh-copy-id rob@localhost

## Setup Python
    sudo apt install python3.6
    
## One of these statements works !!
    sudo update-alternatives --config python
    sudo update-alternatives --config python3
    sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1
    sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 2
    sudo update-alternatives --config python

## /etc/ansible/hosts

    --- 
    all:
      hosts:
        localhost:
          vars:
            ansible_connection: local
            ansible_python_inerpreter: "{{ansible_playbook_python}}"

## Add this like to /etc/sudoers
    <your_username>     ALL=(ALL) NOPASSWD:ALL



Run the playbook as follows:

    $ ansible-playbook -u <your_username> site.yml --extra-vars=password=<my_password>

