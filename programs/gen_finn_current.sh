#!/bin/bash
# -------------------------------------------------------------
# App       : Finn
# Program   : gen_finn_current.sh
# Function  : generate reduced images for project/finn/current
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20230131: initial version
# -------------------------------------------------------------
# initialize variables
msg_help="help"
version="0.0"
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
# convert-im6.q16 [input-option] input-file [output-option] output-file
  convert -resize "$size" "$sourcedir/$folder/$file" "$targetdir/$folder/$file"
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
 date
 echo "Script: $0 END"
 echo "----------------------------------------------------------"
}

# program
main
