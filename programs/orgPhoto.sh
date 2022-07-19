#!/bin/sh
# -------------------------------------------------------------
# App       : Finn
# Program   : orgPhoto.sh
# Function  : organize image files
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200929: initial version
# -------------------------------------------------------------
# initialize variables
#SOURCE="/home/yzmu/case04/mirror/photo/prj/finn/05-Recife"
PREFIX="$1"
WORKFOLDER="/home/yzmu/tmp"
HIMAGEFILES="*.JPG"
IMAGEFILES="*.jpg"
# -------------------------------------------------------------
# functions
renameFiles() {
 # copy SOURCE to TEMP
 #mkdir -p $WORKFOLDER
 #cp $SOURCE/$IMAGEFILES $WORKFOLDER
 #ls -l $WORKFOLDER/$IMAGEFILES 
 #echo "Renaming in dropbox format:"
 echo "Folder: $WORKFOLDER" 
 echo "Prefix: $PREFIX" 
 cd $WORKFOLDER
 # fix names
 funcoeszz zzarrumanome $HIMAGEFILES
 # rename in dropbox format
 funcoeszz zznomefoto --dropbox $IMAGEFILES
 # fix names
 funcoeszz zzarrumanome $IMAGEFILES
 # include folder name
 mmv '*.jpg' $PREFIX'-#1.jpg'
 ls -l $WORKFOLDER/$IMAGEFILES
}
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
#PREFIX="old"
#WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/00-old"        

renameFiles

date
echo "Script: $0 END"
echo "----------------------------------------------------------"
