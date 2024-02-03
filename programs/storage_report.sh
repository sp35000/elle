#!/bin/bash
# -------------------------------------------------------------
# App       : Elle
# Program   : storage_report.sh
# Function  : external disk report
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200626: initial version
# 20230421: updating sort for case05
# 20240202: adding /home/yzmu/case04/mirror/06-study/
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

# functions
main() {
 echo "----------------------------------------------------------"
 echo "Script: $0 START"
 date
 # main
 echo "----------------------------------------------------------"
 echo "case04 general report"
 du -hs /home/yzmu/case04/movies
 du -hs /home/yzmu/case04/mirror
 echo "case04 mirror report"
 du -hs /home/yzmu/case04/mirror/*|grep G|sort -nr
 echo "case04 video report"
 du -hs /home/yzmu/case04/mirror/video/*|sort -nr
 echo "case04 06-study report"
 du -hs /home/yzmu/case04/mirror/06-study/*|sort -nr
 echo "case04 photo report"
 du -hs /home/yzmu/case04/mirror/photo/*|sort -nr
 echo "----------------------------------------------------------"
 echo "case05 general report"
 du -hs /home/yzmu/case05/
 du -hs /home/yzmu/case05/*|grep G|sort -nr
 echo "----------------------------------------------------------"
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
