#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : memclean.sh
# Function  : clean memory RAM
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20210322: initial version
# -------------------------------------------------------------
# initialize variables
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
killall brave
killall chrome
killall cinnamon-screensaver
free --mega
date
echo "Script: $0 END"
echo "----------------------------------------------------------"
