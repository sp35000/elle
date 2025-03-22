#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : hrsync_deploy_des.sh
# Function  : rsync to DES
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20210724: initial version
# 20211028: adapted from hrsync_pc19_pc13_myCloud.sh
# 20211103: adapted from hrsync_pc20_pc13_myCloud.sh
# 20220422: adapted from hrsync_from_pc20.sh
# 20220730: including pi01 in deploy
# 20220801: including pi02 in deploy
# 20221013: including vc02 in deploy
# 20221227: disable pi02 and vc02
# 20250321: added vs01
# -------------------------------------------------------------
# initialize variables
SOURCE="/home/yzmu/myCloud/mirror"
SYSDATE="$(date +%Y%m%d%H%M)"
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
echo "Cleaning temporary files"
cd $SOURCE
find . -type f  -name "*~*" -print -exec rm {} \;
echo "Synchronizing with DES"
figlet pi01.ck
TARGET="/home/yzmu/pi01-pi/myCloud/mirror"
cd $TARGET
rsync -Crazvp $SOURCE/ $TARGET

figlet pi02.ck
TARGET="/home/yzmu/pi02-pi/myCloud/mirror"
cd $TARGET
rsync -Crazvp $SOURCE/ $TARGET

figlet vs01.ck
TARGET="/mnt/vs01-osboxes/myCloud/mirror"
cd $TARGET
rsync -Crazvp $SOURCE/dev   $TARGET
rsync -Crazvp $SOURCE/ops   $TARGET
rsync -Crazvp $SOURCE/marla $TARGET
echo "Script: $0 END"
echo "----------------------------------------------------------"

