#!/bin/sh
sudo mount -t cifs //192.168.1.3/d /mnt/pc17-d/ -o username=yzmu,uid=1000
df -h
