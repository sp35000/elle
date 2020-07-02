#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : pc18-mint19-setup.sh
# Function  : install packages for pc18 with mint 19
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200610: initial version
# -------------------------------------------------------------
# start
sudo apt install owncloud-client
sudo apt install gnome-commander
sudo apt install apache2
sudo apt install mariadb-server
sudo apt install mariadb-client
sudo apt install php
sudo apt install php-mysql
sudo apt install filezilla
sudo apt install sysvbanner
sudo apt install figlet
sudo apt install man-db
sudo apt install dropbox
sudo apt install fdupes
sudo apt install tigervnc-viewer
sudo apt install util-linux
sudo apt install tree
sudo apt install samba
sudo apt install imagemagick
sudo apt install txt2html
sudo apt install ffmpeg
sudo apt install lynx
sudo apt install php-pear
sudo apt install python-pdfminer
sudo apt install traceroute
sudo apt install gocr
sudo apt install netpbm libjpeg-progs php7.2-gd
sudo apt install python-pip
# install most recent version from the official repository
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
# install plex: sudo dpkg -i plexmediaserver_1.18.0.1913-e5cc93306_amd64.deb
# install truecrypt: sudo ./truecrypt-7.2-setup-x64
# Instalação funcoeszz
funcoeszz zzzz --bashrc
source ~/.bashrc
sudo apt install w3m
# e-residency estonia: https://installer.id.ee/?lang=eng
# install-open-eid.sh 
# linkchecker: https://wummel.github.io/linkchecker/
# sudo dpkg -i linkchecker_9.4.0-2_amd64.deb 
# sudo apt install --fix-broken
# free office: https://www.freeoffice.com/en/download/applications
# sudo dpkg -i softmaker-freeoffice-2018_976-01_amd64.deb
# php configuration
pear install PHP_CodeSniffer
# home office 
sudo apt install python3-dateutil
sudo apt install pidgin
sudo apt install chromium-browser
# sudo dpkg -i o-vpn_amd64_18.deb
# install mega
# sudo dpkg -i megasync-xUbuntu_18.04_amd64.deb 
sudo apt install --fix-broken
pip install html2text
