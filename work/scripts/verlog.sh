#!/bin/sh
echo -------------------------------------------------------------------- INICIO
for arquivo in `ls -t *$1*.log`
do
DATA=`ls -l $arquivo|cut -c 46-57`
echo ARQUIVO: $arquivo - DATA: $DATA
#grep -e Inicio -e Fim -e / -e = $arquivo
grep -e / $arquivo
echo -------------------------------------------------------------------- 
done
echo -------------------------------------------------------------------- FIM
