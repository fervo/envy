#!/bin/bash
xcode-select --install
sudo easy_install pip
sudo pip install ansible
ansible-galaxy install -r requirements.yml
ansible-playbook desktop.yml --ask-become-pass
