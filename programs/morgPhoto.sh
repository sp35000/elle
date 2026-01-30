#!/bin/bash
# -------------------------------------------------------------
# App       : Finn
# Program   : morgPhoto.sh
# Function  : call orgPhoto.sh to process several directories
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200626: initial version
# 20260130: cities configuration changed
# -------------------------------------------------------------
# initialize variables
msg_help="help"
version="0.0"
basedir="/home/yzmu/case04/mirror/photo/original/Camera"
tmpdir="/home/yzmu/tmp"
target="/home/yzmu/case04/mirror/photo/project/finn/current"
# -------------------------------------------------------------
# verify options and define flags
while getopts "hV" option 
do
 case $option in
  h) echo $msg_help; exit 0 ;;
  V) echo $version; exit 0 ;;
 esac
done

# functions
callOrgPhoto() {
 echo "----------------------------------------------------------"
 echo "Files in $city before: "
 ls "$target/$city"|wc -l
 ln -s "$basedir/$city" $tmpdir
 echo "Files in $city to proccess: "
 ls -l "$basedir/$city" | wc -l
 /home/yzmu/bin/orgPhoto.sh $city
 cp -anv $tmpdir/*.jpg "$target/$city/"
 echo "Files in $city after processing: "
 ls "$target/$city"|wc -l
 rm $tmpdir 
}

production() {
 city="curitiba"
 callOrgPhoto
 city="fortaleza"
 callOrgPhoto
 city="manaus"
 callOrgPhoto
 city="panama"
 callOrgPhoto
 city="rj"
 callOrgPhoto
 city="salvador"
 callOrgPhoto
 city="sp"
 callOrgPhoto
}

main() {
 echo "----------------------------------------------------------"
 echo "Script: $0 START"
 date
 # main
    city=canoa
    callOrgPhoto
    city=fortaleza
    callOrgPhoto
    city=jampa
    callOrgPhoto
    city=natal
    callOrgPhoto
    city=recife
    callOrgPhoto
    city=rj
    callOrgPhoto
    city=salvador
    callOrgPhoto
    city=sp
    callOrgPhoto
    city=teresina
    callOrgPhoto
#  city="manaus"
#  callOrgPhoto
#  city="panama"
#  callOrgPhoto
# production
 date
 echo "Script: $0 END"
 echo "----------------------------------------------------------"
}

report() {
 echo "$sysout"
}

# program
#sysout=$("main")
#retCode=$?
#report
#exit $retCode
main
