#!/bin/bash
# -------------------------------------------------------------
# App       : Trance
# Program   : trance_extract.sh
# Function  : extract Trance data
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20240522: initial version
# 20241014: extract Trance worklogs
# -------------------------------------------------------------
# initialize variables
msg_help="extract Trance data"
version="20241014: extract Trance worklogs"
sourcefolder="/home/yzmu/myCloud/mirror/dev/intra/trance"
input_files=$1
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
 cd "$sourcefolder"
 grep ^[0-2][[:digit:]][0-1][[:digit:]][0-3][[:digit:]]: w*.html|cut -c 1-|grep -v ^[0-2][[:digit:]][0-1][[:digit:]]3[2-9]:|sort -r
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
