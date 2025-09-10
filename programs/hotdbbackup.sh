#!/bin/bash
# -------------------------------------------------------------
# App       : Elle
# Program   : hotdbbackup.sh
# Function  : hot production db backup
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
version="20250910 initial version"
# -------------------------------------------------------------
# initialize variables
msg_help="hot production db backup"
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
 mysqldump ckropae6_serina > /home/ckropae6/acc/serinadb.sql
 mysqldump ckropae6_emma > /home/ckropae6/acc/emmadb.sql
 ls -lh /home/ckropae6/acc/*db.sql
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
