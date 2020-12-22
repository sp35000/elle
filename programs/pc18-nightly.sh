#!/bin/sh 
# -------------------------------------------------------------
# App       : Elle
# Program   : pc18-nightly.sh
# Function  : Nightly job controller
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200515: initial version
# -------------------------------------------------------------
# initialize variables
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
df -h
#/home/yzmu/bin/korgfolder.sh
/home/yzmu/bin/mv_home_stage.sh
/home/yzmu/bin/hrsync_ckrops_git.sh
/home/yzmu/bin/hcp_ownCloud_dropbox.sh
#/home/yzmu/bin/hcp_docs_case04.sh
/home/yzmu/bin/serina-ckrops-cloud.sh "$PARM"
/home/yzmu/bin/ftp_home_ckrops.sh "$FTP_HOME_CKROPS"
#/home/yzmu/bin/hrsync_case04_case05.sh
#/home/yzmu/bin/hrsync_case05_case06.sh
df -h
date
echo "Script: $0 END"
echo "----------------------------------------------------------"
