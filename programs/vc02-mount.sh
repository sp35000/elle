#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : vc02-mount.sh
# Function  : mount shared files for vc02.ck
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20210602: updated including pc20.ck
# 20220730: updated mount just pc19.ck 
# initialize variables
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
# main
sudo mount -t cifs //vc02.ck/yzmu /mnt/vc02-yzmu/ -o username=yzmu,uid=1000
df -h
date
echo "Script: $0 END"
echo "----------------------------------------------------------"

