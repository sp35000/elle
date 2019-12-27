#!/bin/sh -x
echo -------------------------
echo Script: $0
echo -------------------------
ORIGEM=/home/yzmu/case04/
DESTINO=/home/yzmu/case06/
if test -e $ORIGEM && test -e $DESTINO; then
 echo Mirror $ORIGEM $DESTINO
 rsync -Cravzp --delete-before $ORIGEM $DESTINO
else
 echo $ORIGEM ou $DESTINO inexistentes
fi
