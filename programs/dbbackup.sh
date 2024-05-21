#!/bin/bash
# -------------------------------------------------------------
# App       : Elle
# Program   : dbbackup.sh
# Function  : preserve db daily backups
# Site      : https://github.com/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20240308: initial version
# 20240416: adjust dbBackupDir
# -------------------------------------------------------------
# initialize variables
msgHelp="help"
version="0.0"
dbDir="$HOME/Downloads"
dbFile="serina_news"
dbBackupDir="$HOME/case04/mirror/backup/sig/serina"
grepDate="$(date +%y%m%d)"
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
 for file in $(find $dbBackupDir -type f -atime +10); do
  rm "$file"
 done
}

main() {
 echo "----------------------------------------------------------"
 echo "Script: $0 START"
 date
 cp "$dbDir/$dbFile.sql" "$dbBackupDir/$dbFile-$grepDate.sql"
 removeOld
 ls -lht "$dbBackupDir"
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
