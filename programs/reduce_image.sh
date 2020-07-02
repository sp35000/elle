#!/bin/sh
# -------------------------------------------------------------
# App       : Kathryn
# Program   : reduce_image.sh
# Function  : reduce size of jpg and png images
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200626: initial version
# -------------------------------------------------------------
# initialize variables
FOLDER="/home/yzmu/d/new"
SIZE="70%"
# -------------------------------------------------------------
# start
mkdir -p $FOLDER
for FILE in $(find . -type f -size +150k); do
 convert -resize "$SIZE" "$FILE" "$FOLDER/$FILE"
 echo -n "."
done
echo "\nFinished."
