#!/bin/sh
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
DIR="/home/yzmu/case04/video/youtube"
# -------------------------------------------------------------
# to install youtube-dl
# sudo apt-get -y install youtube-dl # install
# sudo youtube-dl -U # update
# sudo youtube-dl --version
# start
# general download
cd $DIR
time \
/usr/local/bin/youtube-dl \
-i -a $DIR/yt-tasks.txt \
--no-overwrites \
--geo-bypass \
--restrict-filenames \
--console-title \
-c \
-o "%(title)s--%(id)s--.%(ext)s" \
#
# videoclips download
DIR="/home/yzmu/case04/video/public/music"
cd $DIR
time \
/usr/local/bin/youtube-dl \
-i -a $DIR/yt-tasks.txt \
--no-overwrites \
--geo-bypass \
--restrict-filenames \
--console-title \
-c \
-o "%(title)s--%(id)s--.%(ext)s" \

