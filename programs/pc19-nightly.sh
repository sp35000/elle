#!/bin/sh 
# -------------------------------------------------------------
# App       : Elle
# Program   : pc19-nightly.sh
# Function  : Nightly job controller
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20201213: initial version adapted from pc18-nightly.sh
# -------------------------------------------------------------
# initialize variables
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
df -h
/home/yzmu/bin/korgfolder.sh
# in pc18: /home/yzmu/bin/mv_home_stage.sh
# in pc18: /home/yzmu/bin/hrsync_ckrops_git.sh
# in pc18: /home/yzmu/bin/hcp_ownCloud_dropbox.sh
/home/yzmu/bin/hrsync_bin_elle.sh
/home/yzmu/bin/hcp_docs_case04.sh
# in pc18: /home/yzmu/bin/serina-ckrops-cloud.sh "$PARM"
# in pc18: /home/yzmu/bin/ftp_home_ckrops.sh "$FTP_HOME_CKROPS"
/home/yzmu/bin/hrsync_case04_case05.sh
#/home/yzmu/bin/hrsync_case05_case06.sh
df -h
date
echo "Script: $0 END"
echo "----------------------------------------------------------"
