#!/bin/bash
# -------------------------------------------------------------
# App       : Elle
# Program   : sigdailylog.sh
# Function  : show sig daily backup log
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20221025: initial version
# -------------------------------------------------------------
# initialize variables
msgHelp="help"
version="0.0"
logDir="$HOME/log"
logFile="$logDir/vc-xp.log"
sibBackupDir="$HOME/d/sig-daily"
grepDate="$(date +sig\-%d\-%m)"
# -------------------------------------------------------------
# verify options and define flags
while getopts "hV" option 
do
 case $option in
  h) echo $msgHelp; exit 0 ;;
  V) echo $version; exit 0 ;;
 esac
done

# functions
removeOld() {
 for file in $(find $sibBackupDir -type f -atime +40); do
  rm "$file"
 done
 ls -l "$sibBackupDir"
}

main() {
 echo "----------------------------------------------------------"
 echo "Script: $0 START"
 date
 removeOld
 echo "----------------------------------------------------------"
 cat "$logFile" |grep "$grepDate"
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
