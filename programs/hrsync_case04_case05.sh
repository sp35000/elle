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
# -------------------------------------------------------------
# initialize variables
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
 cp -an $SOURCE/sig-backup/* $TARGET/sig-backup/
 ls $SOURCE/sig-backup/|wc -l
 ls $TARGET/sig-backup/|wc -l
 echo "$0 Report"
 du -hs $SOURCE
 du -hs $TARGET
else
 echo "$SOURCE or $TARGET not found."
fi
echo "Script: $0 END"
echo "----------------------------------------------------------"
