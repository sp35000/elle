#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : hrsync_local_mega.sh
# Function  : rsync mirror with mega
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200714: initial version
# 20230220: template updated
# 20230615: changed to hrsync_local_mega.sh
# -------------------------------------------------------------
# initialize variables
msg_help="help"
version="0.0"
LOCAL="/home/yzmu/case04/mirror/06-study"
MEGA="/home/yzmu/MEGAsync/mirror"
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
 rsync -Crazvp --delete-before $LOCAL $MEGA/
 date
 echo "Script: $0 END"
 echo "----------------------------------------------------------"
}

report() {
 echo "$sysout"
}

# program
#sysout=$("main")
main
retCode=$?
report
exit $retCode

