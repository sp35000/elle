#!/bin/bash
# -------------------------------------------------------------
# App       : Elle
# Program   : hrsync_myCloud_storage.sh
# Function  : sync myCloud with local storage
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
version="20200626: initial version"
# -------------------------------------------------------------
# initialize variables
msg_help="help"
SOURCE="/home/yzmu/myCloud/mirror"
TARGET="/home/yzmu/case04/mirror/backup/myCloud"
# -------------------------------------------------------------
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
 echo "Cleaning temporary files"
 cd $SOURCE
 find . -type f  -name "*~*" -print -exec rm {} \;
 # find . -type f  -name "*conflict*" -print -exec rm {} \;
 echo "Synchronizing $SOURCE with $TARGET"
 cd $TARGET
 rsync -Crazvp --delete-before $SOURCE/ $TARGET
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
