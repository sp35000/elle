#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : hrsync_to_pc19.sh
# Function  : rsync to pc19.ck
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20210724: initial version
# 20211028: adapted from hrsync_pc19_pc13_myCloud.sh
# 20211103: adapted from hrsync_pc20_pc13_myCloud.sh
# 20220422: adapted from hrsync_from_pc20.sh
# -------------------------------------------------------------
# initialize variables
SOURCE="/home/yzmu/myCloud"
TARGET="/home/yzmu/pc19-yzmu/myCloud"
SYSDATE="$(date +%Y%m%d%H%M)"
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
echo "Cleaning temporary files"
cd $SOURCE
find . -type f  -name "*~*" -print -exec rm {} \;
# find . -type f  -name "*conflict*" -print -exec rm {} \;
echo "Synchronizing with local Git repository"
cd $TARGET
rsync -Crazvp $SOURCE/ $TARGET
echo "Script: $0 END"
echo "----------------------------------------------------------"

