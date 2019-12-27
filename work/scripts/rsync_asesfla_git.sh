#!/bin/sh -x
echo -------------------------
echo Script: $0
echo -------------------------
ORIGEM=/home/12805865839/fwork/publicacao/PRO/ASESFLA-UOL/web/
DESTINO=/home/12805865839/git/asesfla/www/
rsync -Cravzp $ORIGEM $DESTINO
