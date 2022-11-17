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
video_dir="/home/yzmu/case04/mirror/video/private/"
thumb_dir="/home/yzmu/d/thumb"
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
 cd "$video_dir/"
 for f in `ls`
 do
  echo $f
  ffmpeg -i "$f" -t 2 -r 0.5 "$thumb_dir/$f"%d.jpg
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
