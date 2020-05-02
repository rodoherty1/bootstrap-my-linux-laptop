
# My Ansible scripts for rebuilding my personal laptop

## What does it do?
This script installs the following on your Ubuntu-based laptop:
* Ansible
* Google Chrome
* Inkscape
* Python3
* Vice C64 Emulator
* Zsh and OhMyZsh
* Visual Studio Code
* IntelliJ
* AWS CLI v2.0
* Vim + minor customisations
* Multi-touch tablet support

## What Linux OSes does this work with?
Ubuntu-based Linux distributions.

I have tested it with the 20.04 editions of Ubuntu Mate, Pop!OS and Kubuntu.

## Getting Started
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

