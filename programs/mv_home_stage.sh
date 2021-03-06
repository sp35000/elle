#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : mv_home_stage.sh
# Function  : Move files from cloud to local computer
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200701: initial version
# 20201014: verifying source/target before operation
# -------------------------------------------------------------
# initialize variables
SOURCE="/home/yzmu/ownCloud/to_home"
TARGET="/home/yzmu/d/stage-2020"
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
if test -e $SOURCE && test -e $TARGET; then
 mv $SOURCE/* $TARGET/
 echo -------------------------
 echo "$SOURCE folder:"
 ls -lht "$SOURCE"
 echo -------------------------
 echo "$TARGET folder:"
 ls -lht "$TARGET"
else
 echo "$SOURCE or $TARGET not found."
fi
echo "Script: $0 END"
echo "----------------------------------------------------------"
