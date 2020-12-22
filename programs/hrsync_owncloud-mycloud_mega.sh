#!/bin/sh -x
# -------------------------------------------------------------
# App       : Elle
# Program   : hrsync_owncloud-mycloud_mega.sh
# Function  : rsync owncloud and mycloud with mega
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200714: initial version
# -------------------------------------------------------------
# initialize variables
OWNCLOUD="/home/yzmu/ownCloud"
MYCLOUD="/home/yzmu/myCloud"
MEGA="/home/yzmu/MEGAsync"
SYSDATE="$(date +%Y%m%d%H%M)"
# -------------------------------------------------------------
# start
rsync -Crazvp --delete-before $OWNCLOUD $MEGA/
rsync -Crazvp --delete-before $MYCLOUD $MEGA/

