#!/bin/bash
# -------------------------------------------------------------
# App       : Finn
# Program   : gen_finn_current.sh
# Function  : generate thumbnails
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20230131: initial version
# 20230208: adding getty folder
# 20240801: adjusting for better performance
# -------------------------------------------------------------
# initialize variables
msg_help="generate thumbnails"
version="20240801"
size="10%"
sourcedir="/home/yzmu/case04/mirror/photo/project/finn/current"
targetdir="/home/yzmu/case04/mirror/photo/project/finn/thumb"
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
proccessFolder() {
 folder=$1
 cd $sourcedir/$folder
 for file in $(ls *.jpg); do
# generate thumbnails just if it still was not created
 if test -e "$targetdir/$folder/$file" 
 then
  echo "$folder/$file jumped"
 else  
  echo "Generating thumbnail for $folder/$file"...
# convert-im6.q16 [input-option] input-file [output-option] output-file
# convert runs with low priority
  nice -n 15 convert -resize "$size" "$sourcedir/$folder/$file" "$targetdir/$folder/$file"
# sleep 5 seconds to avoid multiple processes at the same time
  sleep 5
 fi
 done
}

main() {
 echo "----------------------------------------------------------"
 echo "Script: $0 START"
 date
 # main
 for folder in $(ls $sourcedir|grep -v jpg); do
 mkdir -p $targetdir/$folder
  echo "Processing $folder"
  proccessFolder $folder
 done
 sourcedir="/home/yzmu/case04/mirror/photo/published"
 folder="getty"
 mkdir -p $targetdir/$folder
  echo "Processing $folder"
  proccessFolder $folder
 date
 echo "Script: $0 END"
 echo "----------------------------------------------------------"
}

# program
main
