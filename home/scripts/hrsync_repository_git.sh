#!/bin/sh -x
echo -------------------------
echo Script: $0
echo -------------------------
ORIGEM=/home/12805865839/ownCloud/repository/
DESTINO=/home/12805865839/git/repository/
rsync -Cravzp --delete-before $ORIGEM $DESTINO
