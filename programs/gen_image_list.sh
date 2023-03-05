#!/bin/bash
# -------------------------------------------------------------
# App       :
# Program   :
# Function  :
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200626: initial version
# -------------------------------------------------------------
# initialize variables
msg_help="help"
version="0.0"
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
main() {
 echo "----------------------------------------------------------"
 echo "Script: $0 START"
 date
 # main
 cd $sourcefolder
 # list Amidala
 ls max/amidala/*.jpg > $targetfolder/amidala.lst

 # list Max
 ls max/elo316/*.jpg > $targetfolder/max.lst
 ls max/Nordeste-1993/*.jpg >> $targetfolder/max.lst
 ls max/outros/*.jpg >> $targetfolder/max.lst
 ls max/serpro/*.jpg >> $targetfolder/max.lst

 # list Finn
 ls finn-DES/old/*/*.jpg > $targetfolder/finnold.lst
 ls finn-DES/thumb/*/*.jpg > $targetfolder/finnthumb.lst

 # list mesg52
 ls mesg52/draw/*.jpg > $targetfolder/mesg52.lst

 # list trilena
 ls trilena/*.jpg > $targetfolder/trilena.lst
 ls trilena/img/*.jpg >> $targetfolder/trilena.lst

 # list published
 ls finn-PRO/getty/*.jpg > $targetfolder/getty.lst

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
