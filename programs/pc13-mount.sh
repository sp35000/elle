#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : pc13-mount.sh
# Function  : mount pc13 local/remote drives
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200626: initial version
# -------------------------------------------------------------
# initialize variables
# -------------------------------------------------------------
# start
#mount -t cifs //192.168.1.4/d /home/yzmu/pc17-d/ -o username=yzmu,uid=1000
#mount -t cifs //192.168.1.8/yzmu /home/yzmu/pc18-yzmu/ -o username=yzmu,uid=1000
sudo mount -t cifs //pc19.ck/yzmu /home/yzmu/pc19-yzmu/ -o username=yzmu,uid=1000
df -h
