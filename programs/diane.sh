#!/bin/sh
# -------------------------------------------------------------
# App       : Diane
# Program   : diane.sh
# Function  : open all writer texts
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20210502: initial version
# -------------------------------------------------------------
# initialize variables
folder="/home/yzmu/myCloud/to_cloud/writer"
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
# main
cd $folder
gedit charlotte.txt  diane.txt  maisLindas.txt  melody.txt  TheRepubliCK-IT.txt  trilena.txt &
date
echo "Script: $0 END"
echo "----------------------------------------------------------"
