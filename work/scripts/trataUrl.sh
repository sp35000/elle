#!/bin/sh
Arquivo: $1
wget --spider -i $1
#for url in `cat "$1"`; do
#curl -k -L $url 
#curl -L -k `echo "$url"`
#done
