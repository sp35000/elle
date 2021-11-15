#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : pc19-nightly.sh
# Function  : Nightly job controller
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20201213: initial version adapted from pc18-nightly.sh
# 20210218: feat: separating in main and report
# -------------------------------------------------------------
# initialize variables
# -------------------------------------------------------------
# functions
report() {
  echo "$sysout"
}
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
df -h
sysout="$(/home/yzmu/bin/korgfolder.sh 2>&1)"
returnCode=$?
report
# in pc18: /home/yzmu/bin/mv_home_stage.sh
# in pc18: /home/yzmu/bin/hrsync_ckrops_git.sh
# in pc18: /home/yzmu/bin/hcp_ownCloud_dropbox.sh
sysout="$(/home/yzmu/bin/hrsync_bin_elle.sh 2>&1)"
returnCode=$?
report
sysout="$(/home/yzmu/bin/hcp_docs_case04.sh 2>&1)"
returnCode=$?
report
# in pc18: /home/yzmu/bin/serina-ckrops-cloud.sh "$PARM"
# in pc18: /home/yzmu/bin/ftp_home_ckrops.sh "$FTP_HOME_CKROPS"
sysout="$(/home/yzmu/bin/hrsync_case04_case05.sh)"
returnCode=$?
report
sysout="$(/home/yzmu/bin/hrsync_case05_case06.sh 2>&1)"
returnCode=$?
report
sysout="$(/home/yzmu/bin/memclean.sh 2>&1)"
returnCode=$?
report
df -h
date
echo "Script: $0 END"
echo "----------------------------------------------------------"
