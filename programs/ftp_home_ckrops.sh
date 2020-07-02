#!/bin/sh
# -------------------------------------------------------------
# App       : Trance
# Program   : ftp_home_ckrops.sh
# Function  : update TranceAcc files
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200119: initial version
# -------------------------------------------------------------
# initialize variables
HOST="ftp.ckrops.com"
USER="ckropae6"
WORD="B2051quca!@"
ORIGIN="/home/yzmu/ownCloud/to_cloud/sig/trance"
TARGET="acc"
# -------------------------------------------------------------
# start
ftp -nv $HOST << EOF
user $USER $WORD
lcd $ORIGIN
cd $TARGET
put acc01.txt
put acc02.txt
ls acc*.txt
EOF
exit 0
