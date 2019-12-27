#!/bin/sh -x
echo -------------------------
echo Script: $0
echo -------------------------
ORIGEM=/home/yzmu/Documentos/sig
DESTINO=/home/yzmu/ownCloud/to_cloud/sig
rm -Rf $DESTINO/sig
cp $ORIGEM/sig.old $DESTINO
