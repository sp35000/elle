#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : sp35000-post-install.sh
# Function  : execute post installation tasks
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20201126: initial version
# -------------------------------------------------------------
# initialize variables
TARGET="/var/www/html/"
# -------------------------------------------------------------
# start
echo "\n----------------------------------------------------------"
echo "Script: $0 START"
date
# main
ln -s /home/yzmu/Documents $TARGET/d
ln -s /home/yzmu/d/cc/bootstrap-3.4.1-dist $TARGET/bootstrap
ln -s /home/yzmu/ownCloud/to_cloud/lab $TARGET/lab
ln -s /home/yzmu/ownCloud/to_cloud/sig $TARGET/sig
ln -s /home/yzmu/d/r $TARGET/r
ln -s /home/yzmu/d/w $TARGET/w
ln -s /home/yzmu/case04/mirror/photo/pvt/max/amidala $TARGET/sig
ln -s /home/yzmu/case04/mirror/photo/prj/finn $TARGET/sig
ln -s /home/yzmu/case04/mirror/photo/pvt/max $TARGET/sig
ln -s /home/yzmu/case04/mirror/06-study $TARGET/sig/serina/books
date
echo "Script: $0 END"
echo "----------------------------------------------------------"
