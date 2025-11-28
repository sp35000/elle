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
# 20250912: getting db*.sql
# 20251002: put url-marla.txt
version="20251002: put url-marla.txt"
# -------------------------------------------------------------
# initialize variables
msg_help="update TranceAcc and getting db*.sql"
. /home/yzmu/etc/elle.conf
program=$1
program="sftp ckropae6@w4l"
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
lcd $outputDir
put url-marla.txt
ls -l
lcd $backup
get *db.sql
EOF
exit 0
echo "Script: $0 END"
echo "----------------------------------------------------------"
