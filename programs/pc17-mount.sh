#!/bin/sh
#sudo mount /dev/sde1 /media/yzmu/HD-E1/
#sudo mount /dev/sdb1 '/media/yzmu/TOSHIBA EXT/'
#sudo mount /dev/sdd2 '/media/yzmu/Seagate Expansion Drive/'
#
#sudo mount /dev/sdb1 /media/yzmu/HD-E1/
#sudo mount /dev/sdd1 '/media/yzmu/TOSHIBA EXT/'
sudo mount -t cifs //192.168.1.8/yzmu /mnt/pc18-yzmu/ -o username=yzmu,uid=1000
df -h
