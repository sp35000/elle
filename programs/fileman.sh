#!/bin/bash
# -------------------------------------------------------------
# App       : Elle
# Program   : fileman.sh
# Function  : create symbolic link to file manager
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
version="20240625: initial version"
# -------------------------------------------------------------
# initialize variables
msg_help="create symbolic link to file manager"
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
 ln -s $fileman index.php
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
