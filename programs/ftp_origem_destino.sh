#!/bin/sh
# -------------------------------------------------------------
# App       : 
# Program   : ftp_origem_destino.sh
# Function  : 
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200119: initial version
# -------------------------------------------------------------
# initialize variables
PARM=$1
ORIGIN="test"
TARGET="test"
# -------------------------------------------------------------
# start
echo "Debug: " $PARM
$PARM << EOF
lcd $ORIGIN
cd $TARGET
get
put
ls -l 
EOF
exit 0
