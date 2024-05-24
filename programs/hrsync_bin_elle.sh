#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : hrsync_bin_elle.sh
# Function  : rsync home scripts and elle
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
version="20200702: initial version"
version="20201222: migration from BitBucket to GitHub"
version="20240523: adapting to elle.conf"
# -------------------------------------------------------------
# initialize variables
source="$HOME/bin/"
target="$HOME/git/elle/programs/"
# -------------------------------------------------------------
# start
# -------------------------------------------------------------
# programa
echo -------------------------
echo Script: $0
echo -------------------------
rsync --delete-before -Cravzp $source $target
