#!/bin/bash
# -------------------------------------------------------------
# App       : Finn
# Program   : thumbgen.sh
# Function  : generate thumbnail from video
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20221117: initial version
# -------------------------------------------------------------
# initialize variables
msg_help="help"
version="1.0"
watermark="/home/yzmu/d/mesg52t.png"
#source="/home/yzmu/myCloud/to_cloud/x51/2011-mesg52/draw"
source="/home/yzmu/d/draw/"
target="/home/yzmu/d/watermarked/"
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
 cd "$source/"
 for f in `ls`
 do
  echo $f
#  composite -gravity northwest -dissolve 65 "$watermark" "$f" "$target/$f"
  composite -gravity northwest -dissolve 65 -verbose "$watermark" "$f" "$target/$f"
 done
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
