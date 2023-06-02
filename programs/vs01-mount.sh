#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : vs01-mount.sh
# Function  : mount shared files for vs01.ck
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20230602: created from pi01-mount.sh
# -------------------------------------------------------------
# initialize variables
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
# main
sudo mount -t cifs //vs01.ck/osboxes /mnt/vs01-osboxes/ -o username=osboxes,uid=1000
df -h
date
echo "Script: $0 END"
echo "----------------------------------------------------------"
