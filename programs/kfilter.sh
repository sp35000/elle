#!/bin/sh
# -------------------------------------------------------------
# App       : Kathryn
# Program   : kfilter.sh
# Function  : filter lines in files according criteria
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200626: initial version
# -------------------------------------------------------------
# initialize variables
FILE="/home/yzmu/log/kocr.log"
# -------------------------------------------------------------
# start
for i in $(seq 26 40); do
 PESQ=" $i"
# echo "($PESQ)"
 for PARM in $(grep "$PESQ" "$FILE"|grep -v "png: 2"|cut -f 1 -d':'); do
  #echo "$PARM"
  rm -f ${PARM:-empty}
 done
done
