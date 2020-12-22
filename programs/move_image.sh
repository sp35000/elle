#!/bin/sh
# -------------------------------------------------------------
# App       : Kathryn
# Program   : move_image.sh
# Function  : move small images to stage
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200803: initial version
# -------------------------------------------------------------
# initialize variables
FOLDER="/home/yzmu/d/r/stage/ScreenMaster"
# -------------------------------------------------------------
# start
for FILE in $(find . -type f -size -30k); do
 mv $FILE $FOLDER/
done
echo "\nFinished."
