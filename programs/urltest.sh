#!/bin/bash
# -------------------------------------------------------------
# App       : Elle
# Program   : urltest.sh
# Function  : verify url and return http status code
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20240226: initial version
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
url=$1
dataExecucao="$(date +%Y%m%d%H%M)"
# functions
main() {
  status=$(curl -o /dev/null -s -w '%{http_code}' "$url")
  echo "$dataExecucao,$url,$status"
}

report() {
 echo "$sysout"
}

# program
sysout=$("main")
retCode=$?
report
exit $retCode
