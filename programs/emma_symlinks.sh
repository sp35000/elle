#!/bin/sh
# -------------------------------------------------------------
# App       : Emma
# Program   : emma_symlinks.sh
# Function  : create Emma symbolic links 
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20211113: initial version
# 20220803: adapted to intranet
# 20221114: correcting photo links
# -------------------------------------------------------------
# initialize variables
EMMA_HOME=/home/yzmu/myCloud/ckrops/intra
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
# main
cd $EMMA_HOME
ln -s /home/yzmu/case04/mirror/photo/private/max/ .
ln -s /home/yzmu/case04/mirror/photo/private/max/amidala/ .
ln -s /home/yzmu/case04/mirror/photo/project/finn/ .
ln -s /home/yzmu/case04/mirror/photo/project/finn finn-DES
ln -s /home/yzmu/Documents/perry_rhodan/ trilena/pr0
ln -s /home/yzmu/case04/mirror/main/perry_rhodan/ trilena/pr1
ln -s /home/yzmu/case05/mirrorCase04/mirror/main/perry_rhodan/ trilena/pr2
ln -s /home/yzmu/case04/mirror/06-study serina/books
ln -s /home/yzmu/myCloud/to_cloud/x51/mesg52/ .
ln -s /home/yzmu/case04/mirror/photo/private/ext/trilena trilena/img
ln -s /home/yzmu/myCloud/to_cloud/main/6P4/cheat_sheet/ english
date
echo "Script: $0 END"
echo "----------------------------------------------------------"
