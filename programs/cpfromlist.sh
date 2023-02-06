#!/bin/bash
# -------------------------------------------------------------
# App       : Elle
# Program   : cpfromlist.sh
# Function  : copy a file from list
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20230206: initial version
# -------------------------------------------------------------
# initialize variables
msg_help="help"
version="0.0"
listfile=$1
target="/home/yzmu/case04/mirror/photo/published"
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
 for f in $(cat $listfile); do
  cp -anv "$f" "$target"
 done
 date
 echo "Script: $0 END"
 echo "----------------------------------------------------------"
}

report() {
 echo "$sysout"
}

# program
main $listfile
