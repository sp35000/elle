#!/bin/sh -x
DESENVOLVIMENTO=/home/yzmu/ownCloud/to_cloud/sig
GIT_LOCAL=/home/yzmu/d/git/ckrops
SYSDATE=`date +%Y%m%d%H%M`
echo Cleaning temporary files
cd $DESENVOLVIMENTO
find . -type f  -name "*~*" -print -exec rm {} \;
find . -type f  -name "*conflict*" -print -exec rm {} \;
echo Synchronizing with local Git repository
cd $GIT_LOCAL
rsync -Crazvp --delete-before $DESENVOLVIMENTO/ $GIT_LOCAL/sig/
