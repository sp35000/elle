#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : pc18-mount.sh
# Function  : mount shared files for pc18.ck
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20210602: updated including pc20.ck
# 20220730: updated mount just pc18.ck
# -------------------------------------------------------------
# initialize variables
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
# main
sudo mount -t cifs //pc18.ck/yzmu /mnt/pc18-yzmu/ -o username=yzmu,uid=1000
df -h
date
echo "Script: $0 END"
echo "----------------------------------------------------------"

