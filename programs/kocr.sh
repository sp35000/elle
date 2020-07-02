#!/bin/sh
# -------------------------------------------------------------
# App       : Kathryn
# Program   : kocr.sh
# Function  : extract text from image
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200626: initial version
# -------------------------------------------------------------
# initialize variables
ARQUIVOS="$1"
DIRLOG="/home/yzmu/log"
LOGFILE="kocr.log"
# -------------------------------------------------------------
# start
# reset log
> "$DIRLOG/$LOGFILE"
# loop to read images
for ARQUIVO in $(ls $ARQUIVOS); do
# show progress 
 echo -n "#"
# print filename
 echo -n "$ARQUIVO: " >> "$DIRLOG/$LOGFILE"
# print extracted text
gocr -l 230 "$ARQUIVO"|grep [1-2][0-9] >> "$DIRLOG/$LOGFILE"
# gocr -l 230 "$ARQUIVO"
done
echo "\nFinished."
