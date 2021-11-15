#!/bin/sh -x
# -------------------------------------------------------------
# Sistema   : ASESFLA
# Programa  : rsync_asesfla_git.sh
# Funcao    : Sincroniza site da ASES com Git.
# Site      : https://git.serpro/12805865839/ckutils
# Autor     : Celso Kikuchi <celso.kikuchi@serpro.gov.br>
# -------------------------------------------------------------
# 20191220: versao inicial
# -------------------------------------------------------------
# definicao de variaveis
ORIGEM="/home/12805865839/fwork/publicacao/PRO/ASESFLA-UOL/web/"
DESTINO="/home/12805865839/git/asesfla/www/"
# -------------------------------------------------------------
# programa
echo -------------------------
echo Script: $0
echo -------------------------
rsync -Cravzp $ORIGEM $DESTINO
