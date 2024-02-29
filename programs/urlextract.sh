#!/bin/bash
# -------------------------------------------------------------
# App       : Elle
# Program   : urlextract.sh
# Function  : extract links from html page
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200626: initial version
# -------------------------------------------------------------
# initialize variables
msg_help="help"
version="0.0"
# -------------------------------------------------------------
# verify options and define flags
while getopts "hV" option
do
 case $option in
  h) echo $msg_help; exit 0 ;;
  V) echo $version; exit 0 ;;
 esac
done

# variables
list=$1

# functions
main() {
  cat $list | while read lines
  do
    for line in $lines
    do
      #echo $line
      lynx -dump -hiddenlinks=listonly "$line" |grep http |cut -c 7- |grep -v '\[' |grep -v '\]'
    done
  done
}

report() {
 echo "$sysout"
}

# program
sysout=$("main")
retCode=$?
report
exit $retCode
