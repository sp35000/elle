#!/bin/bash
# -------------------------------------------------------------
# App       : Rommie
# Program   : transactions.sh
# Function  : mount partitions
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20210329: improved from initial version
# -------------------------------------------------------------
# initialize variables
read -s -p "tender:" tender
echo
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
truecrypt -t ~/Documents/dino-20101002.img ~/Documents/t --fs-options="umask=0002" --password="$tender" -k "" --protect-hidden=no
truecrypt -t -l
date
echo "Script: $0 END"
echo "----------------------------------------------------------"

