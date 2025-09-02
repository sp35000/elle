#!/bin/bash
sourcefolder="/var/www/html/intra"
targetfolder="/home/yzmu/myCloud/mirror/dev/intra/include"

listsubdir() {
 folder=$1
 echo "$sourcefolder $folder"
 cd "$sourcefolder/$folder"
 for subfolder in $(ls -d *); do
  listdir "$folder/$subfolder" "current-$subfolder.lst" 
 done
}

main() {
 listsubdir finn-DES/old
 listsubdir finn-DES/current
}

main
