#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : pc21-mount.sh
# Function  : mount shared files for pc18.ck
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20220110: created from pc20-mount.sh
# 20220729: included pi01  
# 20220730: mount just pi01  
# -------------------------------------------------------------
# initialize variables
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
# main
sudo mount -t cifs //pi01.ck/yzmu /mnt/pi01-pi/ -o username=pi,uid=1000
df -h
date
echo "Script: $0 END"
echo "----------------------------------------------------------"

