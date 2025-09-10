#!/bin/sh
# -------------------------------------------------------------
# App       : Serina
# Program   : serina-w4l-cloud.sh
# Function  : Backup Serina Cloud Edition database
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200626: initial version
# 20220807: adapting to work4love
# 20250412: adapting to Cloudflare
# 20250910: changing to call hotdbbackup.sh
# -------------------------------------------------------------
# initialize variables
PARM=$1
# -------------------------------------------------------------
# start
# -------------------------------------------------------------
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
ssh -i /home/yzmu/.ssh/pc18 ckropae6@w4l bash -c "/home2/ckropae6/opt/hotdbbackup.sh"
echo "Script: $0 END"
echo "----------------------------------------------------------"
