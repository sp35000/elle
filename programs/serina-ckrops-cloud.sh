#!/bin/sh
# -------------------------------------------------------------
# App       : Serina
# Program   : serina-ckrops-cloud.sh
# Function  : Backup Serina Cloud Edition database
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200626: initial version
# -------------------------------------------------------------
# initialize variables
PARM=$1
# -------------------------------------------------------------
# start
# -------------------------------------------------------------
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
ssh -i /home/yzmu/.ssh/pc18 ckropae6@ckrops.com bash -c "'mysqldump -u ckropae6_wp -p\"$PARM\" ckropae6_serina cnews > /home/ckropae6/acc/serina_cnews.sql; ls -lh /home/ckropae6/acc/serina_cnews.sql'"
echo "Script: $0 END"
echo "----------------------------------------------------------"
