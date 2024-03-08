#!/bin/bash
# -------------------------------------------------------------
# App       : Elle
# Program   : fileurlextract.sh
# Function  : extract links from html page
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20240229: initial version
# 20240305: name changed from urlextract.sh to fileurlextract.sh
# -------------------------------------------------------------
# initialize variables
msg_help="help"
version="0.0"
list=$1
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
  if (test "$list" == "") then
    echo "No file informed."
  else
    cat $list | while read lines
    do
      for line in $lines
      do
        #echo $line
        lynx -dump -hiddenlinks=listonly "$line" |grep http |cut -c 7- |grep -v '\[' |grep -v '\]'
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
