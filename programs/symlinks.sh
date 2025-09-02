#!/bin/bash
# -------------------------------------------------------------
# App       : Elle
# Program   : symlinks.sh
# Function  : create/remove symlinks
# Site      : https://github.com/sp35000/elle
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# version="20240528: initial version"
version="20250509: using HOME variable to adapt to any user"
# -------------------------------------------------------------
# initialize variables
msg_help="create/remove symlinks"
inputfile=$2
# -------------------------------------------------------------
# functions
create_symlinks() {
    echo "create_symlinks from $inputfile"
    cat $inputfile | while read linha
    do
        symlink=$(echo "$linha"|awk -F '=' '{print $1}')
        folder=$(echo "$linha"|awk -F '=' '{print $2}')
        command="ln -s $HOME/$folder $HOME/$symlink"
        # echo "Debug: $command"
        $command
    done     
}

remove_symlinks() {
    echo "remove_symlinks from $inputfile"
    cut -d'=' -f1 $inputfile | while read linha
    do
        command="rm $HOME/$linha"
        # echo "Debug: $command"
        $command
    done 
}
# verify options and define flags
while getopts "chrV" option 
do
 case $option in
  c) create_symlinks; exit 0 ;;
  h) echo "$msg_help"; exit 0 ;;
  r) remove_symlinks; exit 0 ;;
  V) echo "$version"; exit 0 ;;
  *) exit 1;;
 esac
done

# main program
main() {
 echo "----------------------------------------------------------"
 echo "Script: $0 START"
 date
 # main
 date
 echo "Script: $0 END"
 echo "----------------------------------------------------------"
}

report() {
 echo "$sysout"
}

# program
sysout=$("main")
retCode=$?
report
exit $retCode
