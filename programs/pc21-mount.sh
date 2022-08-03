#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : pc21-mount.sh
# Function  : mount shared files for pc21.ck
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20210602: updated including pc20.ck
# 20220730: updated mount just pc19.ck 
# 20220803: adapted to pc21.ck
# initialize variables
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
# main
sudo mount -t cifs //pc21.ck/yzmu /mnt/pc21-yzmu/ -o username=yzmu,uid=1000
df -h
date
echo "Script: $0 END"
echo "----------------------------------------------------------"

