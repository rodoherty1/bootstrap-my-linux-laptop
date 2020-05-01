#!/bin/bash

echo "Installing ansible, ssh and python3"
sudo apt install -y ansible openssh-server python3.8

echo "Enabling ssh"
sudo systemctl enable ssh

echo "Creating and installing ssh key"
printf '\n\n\n' | ssh-keygen -t rsa -b 4096 -C "$USER@localhost"
ssh-copy-id $USER@localhost

echo "Creating /etc/ansible/hosts"
sudo cp ./hosts /etc/ansible/hosts 

echo "Installing python3"
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.8 1

sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 2

printf '2\n' | sudo update-alternatives --config python

