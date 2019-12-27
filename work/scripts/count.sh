#!/bin/sh
cd $PWD
for dir in `find . -maxdepth 1 -type d` 
do
 cd $dir
 echo -n `find . -type f | wc -l` '  '
 echo `pwd` 
 cd - > /dev/null
done 
