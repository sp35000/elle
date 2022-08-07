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
# -------------------------------------------------------------
# initialize variables
PARM=$1
# -------------------------------------------------------------
# start
# -------------------------------------------------------------
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
ssh -i /home/yzmu/.ssh/pc18 ckropae6@work4love.net bash -c "'mysqldump -u ckropae6_wp -p\"$PARM\" ckropae6_serina news > /home/ckropae6/acc/serina_news.sql; ls -lh /home/ckropae6/acc/serina_news.sql'"
echo "Script: $0 END"
echo "----------------------------------------------------------"
