#!/bin/sh -x
# -------------------------------------------------------------
# App       : Rommie
# Program   : posts.sh
# Function  : list posts drafts
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20210404: initial version
# -------------------------------------------------------------
# initialize variables
folderPost="/home/yzmu/myCloud/to_cloud/x51/x51-R"
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
# main
cd $folderPost
wc -l *.txt|sort -nr
date
echo "Script: $0 END"
echo "----------------------------------------------------------"
