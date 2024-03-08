#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : pc21-monthly.sh
# Function  : Monthlly job controller
# Site      : https://github.com/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20240308: initial version
# -------------------------------------------------------------
# initialize variables
opsDir="$HOME/myCloud/ckrops/ops"
serinaadv="SELECT url FROM advtgt;"
# -------------------------------------------------------------
# functions
main() {
  echo "\n----------------------------------------------------------"
  echo "Script: $0 START"
  date
  df -h

  # verify Emma old links
  /home/yzmu/bin/fileurlextract.sh "$opsDir/pages-emma.txt" > "$opsDir/url-emma.txt"
  /home/yzmu/bin/murltest.sh "$opsDir/url-emma.txt" > "$opsDir/url-emma.log"

  # verify Marla old links
  mysql -h"work4love.net" ckropae6_serina -e "$serinaadv"|tr "|" " "|grep -v url > "$opsDir/url-marla.txt"
  /home/yzmu/bin/murltest.sh "$opsDir/url-marla.txt" > "$opsDir/url-marla.log"

  df -h
  date
  echo "Script: $0 END"
  echo "----------------------------------------------------------"
}
#
report() {
  echo "$sysout"
}
# -------------------------------------------------------------
# start
sysout="$(main 2>&1)"
returnCode=$?
report
exit $returnCode
