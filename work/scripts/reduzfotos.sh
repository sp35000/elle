#!/bin/sh
for f in 2014*.jpg
do
 convert -quality 20 $f tn_$f
done
