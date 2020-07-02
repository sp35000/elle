#!/bin/sh -x
# -------------------------------------------------------------
# App       : Elle
# Program   : pc17-nightly.sh
# Function  : Nightly job controller
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200515: initial version
# -------------------------------------------------------------
# initialize variables
# -------------------------------------------------------------
# start
echo ----------------------------------------------------------
date
echo Script: $0 START
date
df -h
echo -------------------------
/home/yzmu/bin/t0
/home/yzmu/bin/mv_home_stage.sh
/home/yzmu/bin/hrsync_ckrops_git.sh
/home/yzmu/bin/hcp_ownCloud_dropbox.sh
/home/yzmu/bin/hcp_docs_case04.sh
/home/yzmu/bin/ftp_home_ckrops.sh
/home/yzmu/bin/hrsync_case04_case05.sh
/home/yzmu/bin/hrsync_case05_case06.sh
echo -------------------------
date
df -h
echo Script: $0 END
echo -------------------------
