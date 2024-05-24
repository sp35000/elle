#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : pc21-nightly.sh
# Function  : Nightly job controller
# Site      : https://github.com/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200515: initial version
# 20210215: separating in main and report
# 20220806: adapting to intra
# 20220807: adapting to work4love
# 20220808: adjusted to myCloud
# 20221104: adjusted to pc21.ck
# 20230301: including hrsync_deploy_des.sh
# 20240308: including dbbackup.sh
# 20240308: improving comments
# 20240308: verify serina old links
# -------------------------------------------------------------
# initialize variables
opsDir="$HOME/myCloud/ckrops/ops"
# -------------------------------------------------------------
# functions
main() {
  echo "\n----------------------------------------------------------"
  echo "Script: $0 START"
  date
  df -h
  # copy local files
  /home/yzmu/bin/mv_home_stage.sh
  /home/yzmu/bin/hrsync_myCloud_storage.sh

  # sync local files with git repositories
  /home/yzmu/bin/hrsync_bin_elle.sh
  /home/yzmu/bin/hrsync_intra_git.sh
  /home/yzmu/bin/hrsync_sig_git.sh
  /home/yzmu/bin/hrsync_w4l_git.sh

  # sync local files with cloud storage
  /home/yzmu/bin/hcp_myCloud_dropbox.sh

  # deploy local files to DES environment
  /home/yzmu/bin/hrsync_deploy_des.sh

  # sync local and production files
  /home/yzmu/bin/serina-w4l-cloud.sh
  /home/yzmu/bin/ftp_home_w4l.sh "$FTP_HOME_CKROPS"
  /home/yzmu/bin/dbbackup.sh

  # verify serina old links
  /home/yzmu/bin/mysqlurlextract.sh > "$opsDir/url-serina.txt"
  /home/yzmu/bin/murltest.sh "$opsDir/url-serina.txt" >> "$opsDir/url-serina.log"

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
