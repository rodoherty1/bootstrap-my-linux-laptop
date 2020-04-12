
# My Ansible scripts for rebuilding my personal laptop

## Instructions

### Enable passwordless sudo
Launch `visudo`

    sudo visudo

Add this line at the end of  the section that reads `# Allow members of group sudo to execute any command`

    <your_username>     ALL=(ALL) NOPASSWD:ALL

### Install ansible, git and others
    sudo apt install -y git 

### Clone this repo
    git clone https://github.com/rodoherty1/bootstrap-my-linux-laptop

### Run the setup script
    cd bootstrap-my-linux-laptop
    ./setup.sh

### Run the Ansible playbook
    ansible-playbook -u $USER site.yml --extra-vars=password=<your_password>

