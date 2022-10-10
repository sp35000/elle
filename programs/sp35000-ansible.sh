#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : sp35000-ansible.sh
# Function  : setup sp35000 machines
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200626: initial version
# 20220829: updating ansible folder
# -------------------------------------------------------------
# initialize variables
source="/home/yzmu/case04/mirror/lab/ansible"
inventory="$source/sp35000-inventory.txt"
playbook="$source/sp35000-playbook.yml"
# -------------------------------------------------------------
# start# to generate ssh key
#ssh-keygen -f ansible-D

# to copy generated key to local/remote hosts
ssh-copy-id -i ~/.ssh/ansible-D.pub yzmu@127.0.0.1
#ssh-copy-id -i ~/.ssh/ansible-D.pub yzmu@pc13.ck
ssh-copy-id -i ~/.ssh/ansible-D.pub yzmu@pc19.ck
#ssh-copy-id -i ~/.ssh/ansible-D.pub yzmu@pc20.ck
ssh-copy-id -i ~/.ssh/ansible-D.pub yzmu@pc21.ck

# ansible ad-hoc
ansible remote -m ping -i $inventory

# ansible-apt-module
# https://linuxbuz.com/linuxhowto/ansible-apt-module
ansible-playbook $playbook -i $inventory --ask-become-pass

