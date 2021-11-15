#!/bin/bash
# -------------------------------------------------------------
# App       : Rommie
# Program   : restoreRommie.sh
# Function  : restore Rommie for a specified period
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20210418: initial version
# -------------------------------------------------------------
# initialize variables
sigVersion=$1
source="/home/yzmu/case04/mirror/sig-backup"
target="/home/yzmu/d/s/" 
read -s -p "sig:" sig
echo
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
truecrypt -t "$source"/"$sigVersion" "$target" --fs-options="umask=0002" --password="$sig" -k "" --protect-hidden=no
truecrypt -t -l
date
echo "Script: $0 END"
echo "----------------------------------------------------------"

