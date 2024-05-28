#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : hrsync_w4l_git.sh
# Function  : rsync work4love.net and git
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200521: initial version
# 20210105: adapting to myCloud
# 20220308: adapted to work4love.net
version="20240528: adapting to elle.conf"
# -------------------------------------------------------------
# -------------------------------------------------------------
# initialize variables
msg_help="rsync work4love.net and git"
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
git_w4l="$git/work4love.net"
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
echo "Cleaning temporary files"
cd $w4l
find . -type f  -name "*~*" -print -exec rm {} \;
echo "Synchronizing with local Git repository"
cd $git_w4l
command="rsync -Crazvp --delete-before $w4l/ $git_w4l"
$command
echo "Script: $0 END"
echo "----------------------------------------------------------"
