#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : hrsync_pc19_pc13_myCloud.sh
# Function  : rsync pc19 myCloud to pc13
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20210724: initial version
# -------------------------------------------------------------
# initialize variables
SOURCE="/home/yzmu/pc19-yzmu/myCloud"
TARGET="/home/yzmu/myCloud"
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
rsync -Crazvp --delete-before $SOURCE/ $TARGET
echo "Script: $0 END"
echo "----------------------------------------------------------"
