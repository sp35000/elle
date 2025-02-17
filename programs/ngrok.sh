#!/bin/bash
# -------------------------------------------------------------
# App       : Elle
# Program   : ngrok.sh
# Function  : "turn ngrok on"
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20250217: initial version
version="20250217: initial version"
# -------------------------------------------------------------
# initialize variables
msg_help="turn ngrok on"
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
 ngrok http --url=boss-drum-united.ngrok-free.app 81 --basic-auth $ngpwd
 date
 echo "Script: $0 END"
 echo "----------------------------------------------------------"
}

report() {
 echo "$sysout"
}

# program
main
exit $?
