#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : hrsync_intra_git.sh
# Function  : rsync intra and git
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200521: initial version
# 20210105: adapting to myCloud
# 20220308: adapted to intra
# -------------------------------------------------------------
# initialize variables
DEV="/home/yzmu/myCloud/ckrops/intra"
# pc17
GIT_LOCAL="/home/yzmu/git/ckrops/intra"
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
rsync -Crazvp --delete-before $DEV/ $GIT_LOCAL
echo "Script: $0 END"
echo "----------------------------------------------------------"
