#! /bin/sh

if ! which ansible >/dev/null; then
  sudo apt-get update
  sudo apt-get install -y software-properties-common
  sudo apt-add-repository -y ppa:ansible/ansible
  sudo apt-get update
  sudo apt-get install -y ansible
fi

sudo ansible-playbook dev_ubuntu.yml --connection=local
