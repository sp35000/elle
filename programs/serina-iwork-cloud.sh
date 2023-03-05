#!/bin/sh
# -------------------------------------------------------------
# Sistema   : Serina
# Programa  : serina-iwork-cloud.sh
# Funcao    : Dump do MySQL da Serina iWork Edition.
# Site      : https://git.serpro/12805865839/ckutils
# Autor     : Celso Kikuchi <celso.kikuchi@serpro.gov.br>
# -------------------------------------------------------------
# 20191211: dump MySQL database
# -------------------------------------------------------------
# initialize variables
PASSWORD2="3166snaq(*"
# -------------------------------------------------------------
# start
mysqldump -u wp -p"$PASSWORD2" serina news > /media/sf_12805865839/ownCloud/pc18/serina_news.sql
exit 0
