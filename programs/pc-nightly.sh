#!/bin/bash
# -------------------------------------------------------------
# App       : Elle
# Program   : pc-nightly.sh
# Function  : Nightly job controller
# Site      : https://github.com/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20250321: initial version
# 20250327: changing pc21 output
# -------------------------------------------------------------
version="20250321: initial version"
# -------------------------------------------------------------
# initialize variables
msg_help="Nightly job controller"
source "/home/yzmu/etc/elle.conf"
# -------------------------------------------------------------
# verify options and define flags
while getopts "hV" option 
do
 case $option in
  h) echo "$msg_help"; exit 0 ;;
  V) echo "$version"; exit 0 ;;
  *) exit 1;;
 esac
done

# functions
pc18() {
 figlet "pc18"
  df -h
  #/home/yzmu/bin/korgfolder.sh
  #/home/yzmu/bin/mv_home_stage.sh
  #/home/yzmu/bin/hrsync_bin_elle.sh
  #/home/yzmu/bin/hrsync_intra_git.sh
  #/home/yzmu/bin/hrsync_sig_git.sh
  #/home/yzmu/bin/hrsync_w4l_git.sh
  #/home/yzmu/bin/gen_finn_current.sh
  /home/yzmu/bin/gen_image_list.sh
  /home/yzmu/bin/hrsync_local_mega.sh
  #/home/yzmu/bin/hcp_myCloud_dropbox.sh
  /home/yzmu/bin/hcp_docs_case04.sh
  #/home/yzmu/bin/serina-w4l-cloud.sh "$PARM"
  #/home/yzmu/bin/ftp_home_w4l.sh "$FTP_HOME_CKROPS"
  /home/yzmu/bin/hrsync_case04_case05.sh
  /home/yzmu/bin/hrsync_case05_case06.sh
  /home/yzmu/bin/storage_report.sh
  df -h
  tail /home/yzmu/log/urltest-asesfla.log
}

pc21() {
 figlet "pc21"    
  # sync local files with cloud storage
  /home/yzmu/bin/hcp_myCloud_dropbox.sh

  # verify serina old links
  /home/yzmu/bin/mysqlurlextract.sh > "$outputDir/url-serina.txt"
  echo "-------------------------------------------------------------"
  echo "Counting $outputDir/url-serina.txt"
  cat "$outputDir/url-serina.txt"|wc -l
  /home/yzmu/bin/murltest.sh "$outputDir/url-serina.txt" >> "$outputDir/url-serina.log"
  echo "-------------------------------------------------------------"
  echo "Counting $outputDir/url-serina.log"
  cat "$outputDir/url-serina.log"|wc -l
}

pc22() {
 figlet "pc22"
  df -h

  # copy local files
  #/home/yzmu/bin/mv_home_stage.sh
  /home/yzmu/bin/hrsync_myCloud_storage.sh

  # sync local files with git repositories
  /home/yzmu/bin/hrsync_bin_elle.sh
  /home/yzmu/bin/hrsync_intra_git.sh
  /home/yzmu/bin/hrsync_sig_git.sh
  /home/yzmu/bin/hrsync_w4l_git.sh

  # deploy local files to DES environment
  /home/yzmu/bin/hrsync_deploy_des.sh

  # sync local and production files
  /home/yzmu/bin/serina-w4l-cloud.sh
  /home/yzmu/bin/ftp_home_w4l.sh "$FTP_HOME_CKROPS"
  /home/yzmu/bin/dbbackup.sh

  df -h
}

main() {
 echo "----------------------------------------------------------"
 echo "Script: $0 START"
 date
 # main
 case $HOSTNAME in
  pc18) pc18;;
  pc18ck) pc18;;
  pc21) pc21;;
  pc22) pc22;;
 esac
 date
 echo "Script: $0 END"
 echo "----------------------------------------------------------"
}

report() {
 echo "$sysout"
}

# program
sysout=$("main")
retCode=$?
report
# main
exit $retCode
