#!/bin/bash
# -------------------------------------------------------------
# App       : Kathryn
# Program   : kcount.sh
# Function  : count files per date
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200821: initial version
# -------------------------------------------------------------
# initialize variables
# -------------------------------------------------------------
# start
for YEAR in {2018..2020}
do
 for MONTH in {01..12}
 do
  FILE="$YEAR"_"$MONTH"
  echo -n "$FILE :"
  ls $FILE*|wc -l
 done
done
