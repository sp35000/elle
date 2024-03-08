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
url=$1
dataExecucao="$(date +%Y%m%d%H%M)"
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
  if (test "$url" == "") then
    echo "No url informed."
  else
    status=$(curl -o /dev/null -s -w '%{http_code}' "$url")
    echo "$dataExecucao,$url,$status"
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
