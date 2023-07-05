#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : hcp_media_original.sh
# Function  : copy media to photo/video
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20230705: initial version
# -------------------------------------------------------------
# initialize variables
SOURCE="/home/yzmu/Downloads/Camera"
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
echo "Backup photos"
TARGET="/home/yzmu/case04/mirror/photo/original/Camera"
cp -anv $SOURCE/*.jpg $TARGET
echo "Backup videos"
TARGET="/home/yzmu/case04/mirror/video/original"
cp -anv $SOURCE/*.mp4 $TARGET
echo "Script: $0 END"
echo "----------------------------------------------------------"
