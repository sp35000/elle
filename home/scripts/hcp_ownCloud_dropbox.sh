#!/bin/sh -x
echo -------------------------
echo Script: $0
echo -------------------------
ORIGEM=/home/yzmu/ownCloud/
DESTINO=/home/yzmu/Dropbox/ownCloud/
#rm -Rf $DESTINO/ownCloud
#cp -a $ORIGEM $DESTINO
rsync -Cravzp --no-links --delete-before $ORIGEM $DESTINO
