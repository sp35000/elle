#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : hrsync_owncloud-mycloud_mega.sh
# Function  : rsync owncloud and mycloud with mega
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200714: initial version
# 20230220: template updated
# -------------------------------------------------------------
# initialize variables
msg_help="help"
version="0.0"
MYCLOUD="/home/yzmu/myCloud"
MEGA="/home/yzmu/MEGAsync"
SYSDATE="$(date +%Y%m%d%H%M)"

# verify options and define flags
while getopts "hV" option 
do
 case $option in
  h) echo $msg_help; exit 0 ;;
  V) echo $version; exit 0 ;;
 esac
done

# functions
main() {
 echo "----------------------------------------------------------"
 echo "Script: $0 START"
 date
 # main
 rsync -Crazvp --delete-before $MYCLOUD $MEGA/
 date
 echo "Script: $0 END"
 echo "----------------------------------------------------------"
}

report() {
 echo "$sysout"
}

# program
sysout=$("main")
retCode=$?
report
exit $retCode

