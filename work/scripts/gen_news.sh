#!/bin/sh
# A shell script to read file line by line
filename="/home/12805865839/d/fixed/stage-2019/titles.txt"
initial_date=`date +%Y%m%d`
final_date=`date +%Y%m%d -d "5 years"`
while read line
do
 case $line in 
  ===*)category=`echo $line|cut -d' ' -f 2`;;
  ---) ;;  
  *http*) 
   url=`echo "$line" | sed 's/\n//g' | sed 's/\r//g'`
   echo $url'|'$initial_date'|'$final_date;;
  *) 
   title=`echo "$line" | sed 's/|/-/g'| sed 's/\n//g'`
   echo -n $title'|'$category'|';;
 esac
done < $filename
