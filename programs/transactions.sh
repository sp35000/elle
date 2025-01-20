#!/bin/bash
# -------------------------------------------------------------
# App       : Rommie
# Program   : transactions.sh
# Function  : mount partitions
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20210329: improved from initial version
# 20241230: case07 variables source and target added
# 20250120: pc18 variables source and target added
# -------------------------------------------------------------
# initialize variables
# source="/media/yzmu/b07c0ea6-d09c-4030-9710-868b995cd3af/d"
# target="/media/yzmu/b07c0ea6-d09c-4030-9710-868b995cd3af/d"
source="/home/yzmu/Documents"
target="/home/yzmu/Documents"
read -s -p "tender:" tender
echo
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
truecrypt -t "$source/dino-20101002.img" "$target/t" --fs-options="umask=0002" --password="$tender" -k "" --protect-hidden=no
truecrypt -t "$source/dino-20231120.img" "$target/t2" --fs-options="umask=0002" --password="$tender" -k "" --protect-hidden=no
truecrypt -t -l
df -h
date
echo "Script: $0 END"
echo "----------------------------------------------------------"