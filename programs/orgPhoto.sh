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
PREFIX="recife"
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
PREFIX="old"
WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/00-old"        
renameFiles

PREFIX="fortaleza"
WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/01-Fortaleza"
renameFiles

PREFIX="sp"
WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/02-SP"         
renameFiles

PREFIX="jampa"
WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/03-Jampa"      
renameFiles

PREFIX="canoa"
WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/04-Canoa"      
renameFiles

PREFIX="recife"
WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/05-Recife"
renameFiles

PREFIX="belem"
WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/06-Belem"
renameFiles

PREFIX="curitiba"
WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/07-Curitiba"
renameFiles

PREFIX="salvador"
WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/08-Salvador"
renameFiles

PREFIX="australia"
WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/09-Australia"
renameFiles

PREFIX="panama"
WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/11-Panama"
renameFiles

PREFIX="fortaleza"
WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/01-Fortaleza/Fortaleza-2007"
renameFiles

PREFIX="fortaleza"
WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/01-Fortaleza/Fortaleza-2009"
renameFiles

PREFIX="recife-jampa"
WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/05-Recife/RecifeJampa-0705"
renameFiles

PREFIX="recife-jampa"
WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/05-Recife/Recife-Jampa-201909/"
renameFiles

PREFIX="antonina"
WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/zz-other/Antonina"
renameFiles

PREFIX="brasilia"
WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/zz-other/Brasilia"
renameFiles

PREFIX="lisboa"
WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/zz-other/Lisboa"
renameFiles

PREFIX="manaus"
WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/zz-other/Manaus"
renameFiles

PREFIX="morretes"
WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/zz-other/Morretes"
renameFiles

PREFIX="natal"
WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/zz-other/Natal"
renameFiles

PREFIX="rj"
WORKFOLDER="/home/yzmu/case04/mirror/photo/prj/finn/zz-other/RJ"
renameFiles

date
echo "Script: $0 END"
echo "----------------------------------------------------------"
