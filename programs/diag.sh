#!/bin/bash
# -------------------------------------------------------------
# App       : Elle
# Program   : diag.sh
# Function  : system resources use report
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 250222: initial version
version="250222: initial version"
# -------------------------------------------------------------
# initialize variables
msg_help="system resources use report"
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
 echo "----------------------------------------------------------"
 echo "CPU:"
 uptime
 echo "----------------------------------------------------------"
 echo "Temperature:"
 sensors
 echo "----------------------------------------------------------"
 echo "I/O:"
 # if needed, install sysstat package
 iostat
 echo "----------------------------------------------------------"
 echo "Memory:"
 free -m
 vmstat 1 5
 echo "----------------------------------------------------------"
 echo "Zombies:"
 ps aux|grep 'defunct'|grep -v 'grep'
 echo "----------------------------------------------------------"
 echo "Disk:"
 df -h
 date
 echo "Script: $0 END"
 echo "----------------------------------------------------------"
}

# program
main
retCode=$?
exit $retCode
