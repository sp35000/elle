#!/bin/sh
# -------------------------------------------------------------
# App       : Kathryn
# Program   : korgfolder.sh
# Function  : delete repeated files and reduce images
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200703: initial version
# 20201014: function organize_images created
# 20210710: excluding r2 and w folders
# -------------------------------------------------------------
# functions
reduce_images() {
if test -e $DIR ; then
 echo "Folder: " $DIR
 du -hs $DIR
 cd $DIR
 /usr/bin/fdupes -d -N -q .
 /home/yzmu/bin/reduce_image.sh
 mv $KTEMP/* .
 du -hs $DIR
else
 echo "$DIR not found."
fi
}
# -------------------------------------------------------------
# initialize variables
KTEMP="/home/yzmu/ktemp"
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
#/home/yzmu/bin/kmoveold.sh
# organizing photo
echo "-------------------------"
DIR="/home/yzmu/d/r/photo/ScreenMaster"
reduce_images
# organizing photo-ml
echo "-------------------------"
DIR="/home/yzmu/d/r/photo-ml/ScreenMaster"
reduce_images
# organizing w
echo "-------------------------"
#DIR="/home/yzmu/d/w/ScreenMaster"
#reduce_images
df -h
echo "Script: $0 END"
echo "----------------------------------------------------------"
