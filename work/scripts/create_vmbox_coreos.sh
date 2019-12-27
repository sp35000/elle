#!/bin/sh
# Script not tested - Celso K. in 19/7/19
HOME=/home/12805865839
BIN=$HOME/d/fixed/work/download/virtualbox
PUB=$HOME/d/fixed/work/download/virtualbox
VMDIR="/home/12805865839/VirtualBox VMs"
ssh-keygen -t rsa
$BIN/create-basic-configdrive -H my_vm01 -s $HOME/.ssh/id_rsa.pub
VBoxManage clonehd $PUB/coreos_production_2135.5.0.vdi $VMDIR/my_vm01.vdi
VBoxManage $VMDIR/modifyhd my_vm01.vdi --resize 10240
echo "Create VM in Virtualbox"
pause
ssh core@10.32.144.21 -p 10022 -i $HOME/.ssh/id_rsa.pub
