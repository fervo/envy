#!/bin/bash
xcode-select --install
read -p "Press any key to continue when xcode-select is done... " -n1 -s
sudo easy_install pip
sudo pip install ansible
ansible-galaxy install -r requirements.yml
ansible-playbook desktop.yml --ask-become-pass
