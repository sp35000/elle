#!/bin/bash
# -------------------------------------------------------------
# App       : Elle
# Program   : create_index.sh
# Function  : create index recursively
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
version="2024074: initial version"
# -------------------------------------------------------------
# initialize variables
msg_help="create index recursively"
source "/home/yzmu/etc/elle.conf"
# -------------------------------------------------------------
# verify options and define flags
while getopts "hV" option 
do
 case $option in
  h) echo "$msg_help"; exit 0 ;;
  V) echo "$version"; exit 0 ;;
  *) exit 1;;
 esac
done

# functions
main() {
 echo "----------------------------------------------------------"
 echo "Script: $0 START"
 date
 # main
 for folder in $(find . -type d); do
#   echo "$folder"
  cd "$folder"
  echo "=== $(pwd)"
  fileman.sh
  cd -
 done
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
