#!/bin/bash
# -------------------------------------------------------------
# App       : Elle
# Program   : murltest.sh
# Function  : read an input file and call urltest.sh for each line
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20240308: initial version
# -------------------------------------------------------------
# initialize variables
msg_help="read an input file and call urltest.sh for each line"
version="20240604: adapting to elle.conf"
source /home/yzmu/etc/elle.conf
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
msg_help="help"
version="0.0"
list=$1
urltest="/home/yzmu/bin/urltest.sh"
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
  if (test "$list" = "") then
    echo "No file informed."
  else
    cat $list | while read lines
    do
      for line in $lines
      do
        #echo $line
        "$urltest" "$line"
      done
    done
  fi
}

report() {
 echo "$sysout"
}

# program
sysout=$("main")
retCode=$?
report
exit $retCode
