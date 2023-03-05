#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : hcp_ownCloud_dropbox.sh
# Function  : rsync owncloud with dropbox
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20190306: initial version
# -------------------------------------------------------------
# initialize variables
SOURCE="/home/yzmu/ownCloud/"
TARGET="/home/yzmu/Dropbox/ownCloud/"
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
echo "rsync " $SOURCE $TARGET
rsync -Cravzp --no-links --delete-before $SOURCE $TARGET
echo "-------------------------"
SOURCE="/home/yzmu/myCloud/"
TARGET="/home/yzmu/Dropbox/myCloud/"
echo "rsync " $SOURCE $TARGET
rsync -Cravzp --no-links --delete-before $SOURCE $TARGET
echo "Script: $0 END"
echo "----------------------------------------------------------"
