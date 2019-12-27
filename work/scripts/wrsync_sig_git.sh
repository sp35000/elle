#!/bin/sh -x
echo -------------------------
echo Script: $0
echo -------------------------
ORIGEM=/home/12805865839/ownCloud/to_cloud/sig/
DESTINO=/home/12805865839/git/ckrops/sig/
rsync -Cravzp --delete-before $ORIGEM $DESTINO
