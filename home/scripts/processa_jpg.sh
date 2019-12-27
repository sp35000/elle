#!/bin/sh
find /home/yzmu/case04/stage -name *.jpg -print > /home/yzmu/ownCloud/to_work/case04-jpg.txt
find /home/yzmu/case04/stage -name *.JPG -print >> /home/yzmu/ownCloud/to_work/case04-jpg.txt
wc -l /home/yzmu/ownCloud/to_work/case04-jpg.txt
