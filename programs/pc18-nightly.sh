#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : pc18-nightly.sh
# Function  : Nightly job controller
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200515: initial version
# 20210215: separating in main and report
# 20220806: adapting to intra
# 20220807: adapting to work4love
# 20220808: adjusted to myCloud
# 20221104: adjusted to backup case04 to case05
# 20221114: including mega sync
# 20230207: reorganizing script
# 20230303: changed hrsync_owncloud-mycloud_mega.sh to hrsync_mycloud_mega.sh
# -------------------------------------------------------------
# initialize variables
# -------------------------------------------------------------
# functions
main() {
  echo "\n----------------------------------------------------------"
  echo "Script: $0 START"
  date
  df -h
  #/home/yzmu/bin/korgfolder.sh
  #/home/yzmu/bin/mv_home_stage.sh
  #/home/yzmu/bin/hrsync_bin_elle.sh
  #/home/yzmu/bin/hrsync_intra_git.sh
  #/home/yzmu/bin/hrsync_sig_git.sh
  #/home/yzmu/bin/hrsync_w4l_git.sh
  /home/yzmu/bin/gen_image_list.sh
  /home/yzmu/bin/hrsync_mycloud_mega.sh
  #/home/yzmu/bin/hcp_myCloud_dropbox.sh
  /home/yzmu/bin/hcp_docs_case04.sh
  #/home/yzmu/bin/serina-w4l-cloud.sh "$PARM"
  #/home/yzmu/bin/ftp_home_w4l.sh "$FTP_HOME_CKROPS"
  /home/yzmu/bin/hrsync_case04_case05.sh
  /home/yzmu/bin/hrsync_case05_case06.sh
  /home/yzmu/bin/storage_report.sh
  df -h
  date
  echo "Script: $0 END"
  echo "----------------------------------------------------------"
}
#
report() {
  echo "$sysout"
}
# -------------------------------------------------------------
# start
sysout="$(main 2>&1)"
returnCode=$?
report
exit $returnCode
