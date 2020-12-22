#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : hrsync_bin_elle.sh
# Function  : rsync home scripts and elle
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200702: initial version
# 20201222: migration from BitBucket to GitHub
# -------------------------------------------------------------
# initialize variables
ORIGEM="$HOME/bin/"
DESTINO="$HOME/git/elle/programs/"
# -------------------------------------------------------------
# start
# -------------------------------------------------------------
# programa
echo -------------------------
echo Script: $0
echo -------------------------
rsync --delete-before -Cravzp $ORIGEM $DESTINO
