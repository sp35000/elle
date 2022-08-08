#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : hcp_myCloud_dropbox.sh
# Function  : rsync myCloud with dropbox
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20190306: initial version
# 20220808: adjusted to myCloud
# -------------------------------------------------------------
# initialize variables
SOURCE="/home/yzmu/myCloud/"
TARGET="/home/yzmu/Dropbox/myCloud/"
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
echo "rsync " $SOURCE $TARGET
rsync -Cravzp --no-links --delete-before $SOURCE $TARGET
echo "Script: $0 END"
echo "----------------------------------------------------------"
