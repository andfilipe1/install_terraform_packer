#!/bin/bash
###################################
#
#     install_terraform_packer.sh
#
###################################
#
#   Version: v0.1
#   Terraform version : 0.8.6
#   Packer version: 0.12.3
#     From J.CUADRADO aka redbeard28
#
####################################

# In case it's not the first time.
sudo unlink /usr/bin/terraform                                                                                                                                                                                                       
sudo unlink /usr/bin/packer
rm /usr/bin/{terraform,packer}

# We start to create folder and then download binaries, mkae a sym-link.
mkdir ~/{terraform_0.8.6,packer_0.12.3}
cd ~/terraform_0.8.6 && curl -O https://releases.hashicorp.com/terraform/0.8.6/terraform_0.8.6_linux_amd64.zip
cd ~/packer_0.12.3 && curl -O https://releases.hashicorp.com/packer/0.12.3/packer_0.12.3_linux_amd64.zip
cd ~/terraform_0.8.6 && unzip terraform_0.8.6_linux_amd64.zip && sudo ln -s ~/terraform_0.8.6/terraform /usr/bin/terraform
cd ~/packer_0.12.3 && unzip packer_0.12.3_linux_amd64.zip && sudo ln -s ~/packer_0.12.3/packer /usr/bin/packer

# Optional: If you need ansible like me.
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install ansible -y
