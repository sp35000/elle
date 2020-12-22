#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : hcp_docs_case04.sh
# Function  : copy docs to case04
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200408: initial version
# -------------------------------------------------------------
# initialize variables
SOURCE="/home/yzmu/d"
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
echo "Backup tenders"
TARGET="/home/yzmu/case04/mirror"
cp $SOURCE/box-20100711.img $TARGET
cp $SOURCE/dino-20101002.img $TARGET
cp $SOURCE/cargo*.img $TARGET
#
echo "Backup stage"
TARGET="/home/yzmu/case04/mirror/stage"
cp -an $SOURCE/stage-2019 $TARGET
cp -an $SOURCE/stage-2020 $TARGET
#
echo -n "Files in stage-2019 source: "
ls $SOURCE/stage-2019|wc -l
echo -n "Files in stage-2019 target: "
ls $TARGET/stage-2019|wc -l
#
echo -n "Files in stage-2020 source: "
ls $SOURCE/stage-2020|wc -l
echo -n "Files in stage-2020 target: "
ls $TARGET/stage-2020|wc -l
echo "Script: $0 END"
echo "----------------------------------------------------------"
