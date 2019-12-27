#!/bin/sh
# A shell script to read file line by line
filename="/home/12805865839/d/fixed/stage-2019/dropbox-links.txt"
while read line
do
 # $line variable contains current line read from the file
 # display $line text on the screen or do something with it.
case $line in
 ===*)category=`echo $line|cut -d' ' -f 2`;echo "=== "$category;;
 http*)
  echo "---"
  line_adjusted=`echo "$line" | sed 's/\r//g'`
  curl $line_adjusted -so - | grep -iPo '(?<=<title>)(.*)(?=</title>)'| sed "s/'//g"
  echo $line
 ;;
esac
done < $filename
