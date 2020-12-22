#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : hrsync_ckrops_git.sh
# Function  : rsync ckrops and git
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200521: initial version
# -------------------------------------------------------------
# initialize variables
DEV="/home/yzmu/ownCloud/to_cloud/sig"
# pc17
GIT_LOCAL="/home/yzmu/d/git/ckrops"
# pc18
# GIT_LOCAL="/home/yzmu/d/cloud/git/ckrops"
SYSDATE="$(date +%Y%m%d%H%M)"
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
echo "Cleaning temporary files"
cd $DEV
find . -type f  -name "*~*" -print -exec rm {} \;
# find . -type f  -name "*conflict*" -print -exec rm {} \;
echo "Synchronizing with local Git repository"
cd $GIT_LOCAL
rsync -Crazvp --delete-before $DEV/ $GIT_LOCAL/sig/
echo "Script: $0 END"
echo "----------------------------------------------------------"
