#!/bin/sh
# -------------------------------------------------------------
# App       : Trance
# Program   : ftp_home_w4l.sh
# Function  : update TranceAcc files
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200119: initial version
# 20210105: adapting to myCloud
# 20220719: fixed error with .sql file in NextCloud
# 20220804: adapting to intra
# 20220807: adapting to work4love
version="20240529: adapting to elle.conf"
# -------------------------------------------------------------
# initialize variables
msg_help="update TranceAcc files"
. /home/yzmu/etc/elle.conf
program=$1
source="$intra/trance"
target="acc"
backup="/home/yzmu/Downloads"
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
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
echo "Debug: " $program
$program << EOF
lcd $source
cd $target
put acc01.txt
put acc02.txt
ls -l 
lcd $backup
get serina_news.sql
EOF
exit 0
echo "Script: $0 END"
echo "----------------------------------------------------------"
