#!/bin/sh -x
echo -------------------------
date
echo Script: $0 START
echo -------------------------
/home/yzmu/bin/t0
/home/yzmu/bin/hrsync_ckrops_git.sh
/home/yzmu/bin/hcp_ownCloud_dropbox.sh
/home/yzmu/bin/hcp_docs_case04.sh
/home/yzmu/bin/hrsync_case04_case05.sh
/home/yzmu/bin/hrsync_case04_case06.sh
echo -------------------------
date
df -h
echo Script: $0 END
echo -------------------------
