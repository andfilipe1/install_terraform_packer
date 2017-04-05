# install_terraform_packer

<h1>
  <span>nr.c4d - Cinema 4D Python Toolbox</span>
  <a href='http://install-terraform-packer.readthedocs.io/en/latest/?badge=latest'>
    <img src='https://readthedocs.org/projects/install-terraform-packer/badge/?version=latest' alt='Documentation Status' />
  </a>
</h1>


## Object
A simple Bash script to install Terrafor and packer on a Ubuntu.

## Tested for
* Ubuntu 16.04 LTS

## Install prequisits: Git
```bash
sudo apt update
sudo apt upgrade -y
sudo apt install git -y
```
## Clone bash script from GIT
```bash
mkdir ~/scripts
cd ~/scripts
git clone https://github.com/redbeard28/install_terraform_packer.git
```

## Run the script
```bash
cd ~/scripts/install_terraform_packer.sh
chmod 755 install_terraform_packer.sh
./install_terraform_packer.sh
```

## Ansible installation
I added to the end of the script installation for ansible.

```bash
# Optional: If you need ansible like me.
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install ansible -y
```

# That's all folks !
