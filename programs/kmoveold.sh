#!/bin/sh
# -------------------------------------------------------------
# App       : Kathryn
# Program   : kmoveold.sh
# Function  : count files per date
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200821: initial version
# 20201014: verifying source/target before operation
# -------------------------------------------------------------
# initialize variables
SOURCE="/home/yzmu/d/w/ScreenMaster"
#SOURCE="/mnt/pc17-d/w/ScreenMaster"
TARGET="/home/yzmu/d/r2/ScreenMaster"
#TARGET="/mnt/pc17-d/r/photo-tmp/ScreenMaster"
# -------------------------------------------------------------
# start
if test -e $SOURCE ; then
 mkdir -p $TARGET
 for FILE in $(find $SOURCE -type f -mtime +820); do
  mv $FILE $TARGET/
 done
 echo -n "Files in $TARGET: "
 ls $TARGET|wc -l
else
 echo "$SOURCE not found."
fi
