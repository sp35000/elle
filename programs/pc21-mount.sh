#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : pc21-mount.sh
# Function  : mount shared files for pc18.ck
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20220110: created from pc20-mount.sh
# -------------------------------------------------------------
# initialize variables
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
# main
sudo mount -t cifs //pc18.ck/yzmu /mnt/pc18-yzmu/ -o username=yzmu,uid=1000
sudo mount -t cifs //pc19.ck/yzmu /mnt/pc19-yzmu/ -o username=yzmu,uid=1000
#sudo mount -t cifs //pc20.ck/yzmu /mnt/pc20-yzmu/ -o username=yzmu,uid=1000
df -h
date
echo "Script: $0 END"
echo "----------------------------------------------------------"

