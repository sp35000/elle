#!/bin/bash
# -------------------------------------------------------------
# App       : Finn
# Program   : gen_image_list.sh
# Function  : list images for further exibition
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
version="20200626: initial version"
version="20230609: mesg52 folder adjust"
version="20240521: listdir included"
version="20240522: listdir improved"
# -------------------------------------------------------------
# initialize variables
msg_help="help"
sourcefolder="/var/www/html/intra"
targetfolder="/home/yzmu/myCloud/mirror/dev/intra/include"
workfile="gen_image_list.tmp"
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
        ls "$1"/*.* > "$targetfolder/$workfile"
        ls "$1"/*/*.* >> "$targetfolder/$workfile"
        grep -E 'jpg|JPG|png|PNG' "$targetfolder/$workfile" > "$targetfolder/$2"
        rm -f "$targetfolder/$workfile"
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
 listdir amidala amidala.lst

 # list Max
 listdir max max.lst

 # list Finn
 listdir "finn-DES/old" finnold.lst
 listdir "finn-DES/thumb" finnthumb.lst

 # list mesg52
 listdir mesg52 mesg52.lst

 # list published
 listdir finn-PRO/getty getty.lst

 # list trilena
 listdir trilena trilena.lst

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
