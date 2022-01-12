#!/bin/sh
# -------------------------------------------------------------
# App       : Emma
# Program   : emma_symlinks.sh
# Function  : create Emma symbolic links 
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20211113: initial version
# -------------------------------------------------------------
# initialize variables
EMMA_HOME=/home/yzmu/myCloud/ckrops/sig
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
# main
cd $EMMA_HOME
ln -s /home/yzmu/case04/mirror/photo/pvt/max/ .
ln -s /home/yzmu/case04/mirror/photo/pvt/max/amidala/ .
ln -s /home/yzmu/case04/mirror/photo/prj/finn/ .
ln -s /home/yzmu/case04/mirror/photo/prj/finn finn-DES
ln -s /home/yzmu/Documents/perry_rhodan/ trilena/pr0
ln -s /home/yzmu/case04/mirror/main/perry_rhodan/ trilena/pr1
ln -s /home/yzmu/case05/mirrorCase04/mirror/main/perry_rhodan/ trilena/pr2
ln -s /home/yzmu/case04/mirror/06-study serina/books
date
echo "Script: $0 END"
echo "----------------------------------------------------------"