#!/bin/sh -x
# -------------------------------------------------------------
# App       : Elle
# Program   : hrsync_case05_case06.sh
# Function  : rsync case05 with case06
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200515: initial version
# -------------------------------------------------------------
# initialize variables
SOURCE="/home/yzmu/case05/mirrorCase04/mirror"
TARGET="/home/yzmu/case06/mirrorCase05/mirrorCase04/mirror"
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
if test -e $SOURCE && test -e $TARGET; then
 echo "Mirror $SOURCE/ $TARGET"
 rsync -Cravzp --delete-before $SOURCE/ $TARGET
 cp -an $SOURCE/sig-backup/* $TARGET/sig-backup/
 ls $SOURCE/sig-backup/|wc -l
 ls $TARGET/sig-backup/|wc -l
else
 echo "$SOURCE or $TARGET not found."
fi
echo "$0 Report"
du -hs $SOURCE
du -hs $TARGET
echo "Script: $0 END"
echo "----------------------------------------------------------"
