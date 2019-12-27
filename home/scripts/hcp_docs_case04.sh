#!/bin/sh -x
echo -------------------------
echo Script: $0
echo -------------------------
ORIGEM=/home/yzmu/d
DESTINO=/home/yzmu/case04/mirror
cp $ORIGEM/box-20100711.img $DESTINO
cp $ORIGEM/dino-20101002.img $DESTINO
cp $ORIGEM/cargo*.img $DESTINO
