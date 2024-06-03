#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : hrsync_case04_case05.sh
# Function  : rsync case04 and case05
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200507: initial version
# 20200828: changing sources
version="20240603: sig-backup excluded as it is inside mirror"
# -------------------------------------------------------------
# initialize variables
msg_help="rsync case04 and case05"
# -------------------------------------------------------------
# verify options and define flags
while getopts "hV" option 
do
 case $option in
  h) echo "$msg_help"; exit 0 ;;
  V) echo "$version"; exit 0 ;;
  *) exit 1;;
 esac
done
SOURCE="/home/yzmu/case04/mirror"
TARGET="/home/yzmu/case05/mirrorCase04/mirror"
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
if test -e $SOURCE && test -e $TARGET; then
 echo "Mirror $SOURCE/ $TARGET"
 rsync -Cravzp --delete-before $SOURCE/ $TARGET
 echo "$0 Report"
 du -hs $SOURCE
 du -hs $TARGET
else
 echo "$SOURCE or $TARGET not found."
fi
echo "Script: $0 END"
echo "----------------------------------------------------------"
