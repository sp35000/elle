#!/bin/sh
cd /home/yzmu/case04/z/
IFS='
'
for file in `cat /home/yzmu/ownCloud/to_work/case04-jpg-20190129.txt`
do
 dir=`dirname $file`
 mkdir -p $dir
 file="/"$file
#
 cp $file ./$dir
done
