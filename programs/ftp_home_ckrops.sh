#!/bin/sh
# -------------------------------------------------------------
# App       : Trance
# Program   : ftp_home_ckrops.sh
# Function  : update TranceAcc files
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200119: initial version
# -------------------------------------------------------------
# initialize variables
PROGRAM=$1
ORIGIN="/home/yzmu/ownCloud/to_cloud/sig/trance"
TARGET="acc"
BACKUP="/home/yzmu/myCloud/x51/backup"
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
echo "Debug: " $PROGRAM
$PROGRAM << EOF
lcd $ORIGIN
cd $TARGET
put acc01.txt
put acc02.txt
ls -l 
lcd $BACKUP
get serina_cnews.sql
EOF
exit 0
echo "Script: $0 END"
echo "----------------------------------------------------------"
