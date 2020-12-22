#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : separate_by_size.sh
# Function  : separate files by size
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20201105: initial version
# -------------------------------------------------------------
# initialize variables
SOURCE="/home/yzmu/case04/mirror/photo/prj/finn"
#SOURCE="/mnt/pc17-d/w/ScreenMaster"
TARGET="/home/yzmu/case04/mirror/photo/prj/current"
#TARGET="/mnt/pc17-d/r/photo-tmp/ScreenMaster"
# -------------------------------------------------------------
# start
if test -e $SOURCE ; then
 mkdir -p $TARGET
 for FILE in $(find $SOURCE -type f -size +800k); do
# echo $FILE
 cp $FILE $TARGET/
 done
 echo -n "Files in $TARGET: "
 ls $TARGET|wc -l
else
 echo "$SOURCE not found."
fi
