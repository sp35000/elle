#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : pc13-peppermint10-setup.sh
# Function  : install packages for pc13 with peppermint 10
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200722: initial version
# -------------------------------------------------------------
# start
# install packages
sudo apt install owncloud-client gnome-commander filezilla sysvbanner figlet man-db dropbox fdupes tigervnc-viewer util-linux tree samba imagemagick txt2html ffmpeg lynx python-pdfminer traceroute gocr netpbm libjpeg-progs python-pip w3m python3-dateutil pidgin chromium-browser openssh-server
sudo apt install --fix-broken
# install most recent version from the official repository
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
# install plex: sudo dpkg -i plexmediaserver_1.18.0.1913-e5cc93306_amd64.deb
# install truecrypt: sudo ./truecrypt-7.2-setup-x64
# Instalação funcoeszz
# funcoeszz zzzz --bashrc
# source ~/.bashrc
# e-residency estonia: https://installer.id.ee/?lang=eng
# install-open-eid.sh 
# linkchecker: https://wummel.github.io/linkchecker/
# sudo dpkg -i linkchecker_9.4.0-2_amd64.deb 
# --fix-broken
# free office: https://www.freeoffice.com/en/download/applications
# sudo dpkg -i softmaker-freeoffice-2018_976-01_amd64.deb
# php configuration
# pear install PHP_CodeSniffer
# home office 
# sudo dpkg -i o-vpn_amd64_18.deb
# install mega
# sudo dpkg -i megasync-xUbuntu_18.04_amd64.deb 
sudo apt --fix-broken
# Python 2.7.15rc1 packages
# pip install html2text
# pip install setuptools
# pip install virtualenv
# python data science environment
# pip install geopandas matplotlib descartes ipython jupyter
