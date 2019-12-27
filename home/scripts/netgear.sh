#!/bin/sh
wget --http-user=admin --http-passwd='2126cvar(*' http://192.168.1.1/RST_status.htm -O /home/yzmu/ownCloud/to_cloud/lemuria.html
wget --http-user=admin --http-passwd='2126cvar(*' http://router/DEV_device.htm -O /home/yzmu/ownCloud/to_cloud/attached_devices.html
cp /home/yzmu/ownCloud/to_cloud/lemuria.html /home/yzmu/Dropbox
cp /home/yzmu/ownCloud/to_cloud/attached_devices.html /home/yzmu/Dropbox
