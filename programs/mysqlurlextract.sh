#!/bin/bash
# -------------------------------------------------------------
# App       : Elle
# Program   : myurlextract.sh
# Function  : extract links from mysql databases Serina e Marla
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20240305: initial version
# 20250507: adjusted to cloudflare migration
# -------------------------------------------------------------
# initialize variables
msg_help="extract 4 years old addresses from serina news"
version="adjusted to cloudflare migration"
year="$(date +%Y)"
date="$(date +%m%d)"
serinanews="SELECT link FROM news WHERE initial_date in ("
serinaadv="SELECT url FROM advtgt;"
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
  pastyear="$(bc <<< $year-4)"
  for ((i=$pastyear;i>=2018;i--))
  do {
    query="$(echo $query$i$date,)"
  }
  done
  query=${query::-1}
  serinanews=$(echo "$serinanews$query) ORDER BY id;")
  # echo "$serinanews$serinaadv"
  # mysql -h"work4love.net" ckropae6_serina -e "$serinanews"|tr "|" " "|grep -v link
  mysql -h"208.91.199.47" ckropae6_serina -e "$serinanews"|tr "|" " "|grep -v link  
  # mysql -h"work4love.net" ckropae6_serina -e "$serinaadv"|tr "|" " "|grep -v url
}

report() {
 echo "$sysout"
}

# program
sysout=$("main")
retCode=$?
report
exit $retCode
