#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : pc19-2010-debian10-setup.sh
# Function  : install packages for pc19-2010 with debian 10
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20201031: initial version
# -------------------------------------------------------------
# start
# install packages
# install brave browser
sudo apt install apt-transport-https curl gnupg
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
exit

# from old scripts
#sudo apt install snapd
#sudo snap install core
#sudo snap install brave
sudo apt install owncloud-client gnome-commander apache2 mariadb-server mariadb-client php php-mysql filezilla sysvbanner figlet man-db dropbox fdupes tigervnc-viewer util-linux tree samba imagemagick txt2html ffmpeg lynx php-pear python-pdfminer git gocr netpbm stellarium gnome-maps libjpeg-progs php7.2-gd w3m python-pip python-setuptools thunderbird mmv jpegoptim
sudo apt install --fix-broken
# install most recent version from the official repository
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
# install plex: sudo dpkg -i plexmediaserver_1.18.0.1913-e5cc93306_amd64.deb
# install truecrypt: sudo ./truecrypt-7.2-setup-x64
# Instalação funcoeszz
funcoeszz zzzz --bashrc
source ~/.bashrc
# e-residency estonia: https://installer.id.ee/?lang=eng
# install-open-eid.sh 
# linkchecker: https://wummel.github.io/linkchecker/
# sudo dpkg -i linkchecker_9.4.0-2_amd64.deb 
# --fix-broken
# free office: https://www.freeoffice.com/en/download/applications
# sudo dpkg -i softmaker-freeoffice-2018_976-01_amd64.deb
# php configuration
pear install PHP_CodeSniffer
echo "deb http://deb.goaccess.io/ $(lsb_release -cs) main" | sudo tee -a /etc/apt/sources.list.d/goaccess.list
# wget -O - https://deb.goaccess.io/gnugpg.key | sudo apt-key --keyring /etc/apt/trusted.gpg.d/goaccess.gpg add -
sudo apt-get update
sudo apt-get install goaccess
sudo pip install virtualenv
sudo apt install apt-transport-https curl
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
