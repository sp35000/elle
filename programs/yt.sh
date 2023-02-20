#!/bin/bash
# -------------------------------------------------------------
# App       : Trilena
# Program   : yt.sh
# Function  : youtube videos batch download
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200428: initial version
# -------------------------------------------------------------
# initialize variables
DIR="/home/yzmu/case04/mirror/video/public/download"
start=18
end=19
# -------------------------------------------------------------
# to install youtube-dl
# sudo apt-get -y install youtube-dl # install
# sudo youtube-dl -U # update
# sudo youtube-dl --version
# start
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
# general download
cd $DIR
time \
/usr/local/bin/youtube-dl \
-i -a $DIR/yt-tasks.txt \
--no-overwrites \
--geo-bypass \
--restrict-filenames \
--console-title \
--playlist-start $start \
--playlist-end $end \
-c \
-o "%(title)s--%(id)s--.%(ext)s" \
#
date
echo "Script: $0 END"
echo "----------------------------------------------------------"
