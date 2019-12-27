#!/bin/sh -x
echo -------------------------
echo Script: $0
echo -------------------------
HOST_DESTINO=$1
echo HOST_DESTINO: $HOST_DESTINO
ORIGEM=/home/yzmu/Documentos
DESTINO=$HOST_DESTINO:/home/yzmu/case03/mirror
rsync $ORIGEM/box-20100711.img $DESTINO
rsync $ORIGEM/dino-20101002.img $DESTINO
rsync $ORIGEM/sig/sig.old $DESTINO/sig
