#!/bin/bash
# -------------------------------------------------------------
# App       : Elle
# Program   : countmove.sh
# Function  : move certain number of files from source to target
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20230123: initial version
# -------------------------------------------------------------
# initialize variables
msg_help="help"
version="0.0"
source="/home/yzmu/case04/mirror/photo/original/Camera"
target="/home/yzmu/case04/mirror/photo/original/tmp"
# -------------------------------------------------------------
# verify options and define flags
while getopts "hV" option 
do
 case $option in
  h) echo $msg_help; exit 0 ;;
  V) echo $version; exit 0 ;;
 esac
done

countmove() {
 for file in $(ls -t $source/*.jpg|head -n 100); do
  mv $file $target
 done
}

# functions
main() {
 echo "----------------------------------------------------------"
 echo "Script: $0 START"
 date
 # main
 countmove
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
