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
version="20240528: adapting to elle.conf"
# -------------------------------------------------------------
# initialize variables
msg_help="rsync intra and git"
. /home/yzmu/etc/elle.conf
# -------------------------------------------------------------
# verify options and define flags
while getopts "hV" option 
do
 case $option in
  h) echo $msg_help; exit 0 ;;
  V) echo $version; exit 0 ;;
  *) exit 1;;
 esac
done
git_intra="$git/ckrops/intra"
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
echo "Cleaning temporary files"
cd $intra
find . -type f  -name "*~*" -print -exec rm {} \;
echo "Synchronizing with local Git repository"
cd $git_intra/
command="rsync -Crazvp --delete-before $intra/ $git_intra"
$command
echo "Script: $0 END"
echo "----------------------------------------------------------"
