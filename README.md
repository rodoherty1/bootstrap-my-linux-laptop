
# My Ansible scripts for rebuilding my personal laptop

## Instructions

### Add user to /etc/sudoers
Launch `visudo`
    sudo visudo

Add this line at the end of  the section that reads `# Allow members of group sudo to execute any command`
    <your_username>     ALL=(ALL) NOPASSWD:ALL

### Install ansible, git and others
    sudo apt install -y ansible openssh-server git python3.7

### Enable ssh
    sudo systemctl enable ssh

## create ssh keys
    ssh-keygen -t rsa -b 4096 -C "rob@localhost"
    ssh-copy-id rob@localhost

## Set python3 as the default
    sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1
    sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 2
    sudo update-alternatives --config python

## Create /etc/ansible/hosts

Replace the entire contents of `/etc/ansible/hosts` with the following:

    --- 
    all:
      hosts:
        localhost:
          vars:
            ansible_connection: local
            ansible_python_inerpreter: "{{ansible_playbook_python}}"


## Run the Ansible playbook

    $ ansible-playbook -u <your_username> site.yml --extra-vars=password=<your_password>

