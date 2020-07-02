#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : hrsync_homescripts_git.sh
# Function  : rsync home scripts and elle
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200702: initial version
# -------------------------------------------------------------
# initialize variables
ORIGEM="$HOME/bin/"
DESTINO="$HOME/d/git/elle/programs/"
# -------------------------------------------------------------
# start
# -------------------------------------------------------------
# programa
echo -------------------------
echo Script: $0
echo -------------------------
rsync --delete-before -Cravzp $ORIGEM $DESTINO
