#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : pc18-mount.sh
# Function  : mount shared files for pc18.ck
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20210602: updated including pc20.ck
# -------------------------------------------------------------
# initialize variables
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
# main
sudo mount -t cifs //pc19.ck/yzmu /mnt/pc19-yzmu/ -o username=yzmu,uid=1000
sudo mount -t cifs //pc20.ck/yzmu /mnt/pc20-yzmu/ -o username=yzmu,uid=1000
df -h
date
echo "Script: $0 END"
echo "----------------------------------------------------------"

