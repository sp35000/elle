#!/bin/bash
# -------------------------------------------------------------
# App       : 
# Program   :
# Function  :
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
version="20200626: initial version"
version="20230609: mesg52 folder adjust"
version="20240521: listdir included"
# -------------------------------------------------------------
# initialize variables
msg_help="help"
sourcefolder="/var/www/html/intra"
targetfolder="/home/yzmu/myCloud/ckrops/intra/include"
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
listdir() {
    if [ -d "$sourcefolder/$1" ] ; then
        cd "$sourcefolder"
        ls "$1"/*.jpg > "$targetfolder/$2"
        ls "$1"/*.jpg >> "$targetfolder/$2"
        ls "$1"/*/*.jpg >> "$targetfolder/$2"
        ls "$1"/*/*.jpg >> "$targetfolder/$2"
        ls "$1"/*.png >> "$targetfolder/$2"
        ls "$1"/*.png >> "$targetfolder/$2"
        ls "$1"/*/*.png >> "$targetfolder/$2"
        ls "$1"/*/*.png >> "$targetfolder/$2"
    else
        echo "$1 don't exist"
    fi
}

main() {
 echo "----------------------------------------------------------"
 echo "Script: $0 START"
 date
 # main
 echo "----------------------------------------------------------"
 # list Amidala
 listdir max/amidala amidala.lst

 # list Max
 listdir max max.lst

 # list Finn
 listdir "finn-DES/old" finnold.lst
 listdir "finn-DES/thumb" finnthumb.lst

 # list mesg52
 listdir mesg52/draw mesg52.lst

 # list trilena
 listdir trilena trilena.lst

 # list published
 listdir finn-PRO/getty getty.lst

 echo "----------------------------------------------------------"
 # report
 ls -lht $targetfolder/*.lst

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
