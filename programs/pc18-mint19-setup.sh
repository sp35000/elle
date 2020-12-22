#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : pc18-mint19-setup.sh
# Function  : install packages for pc18 with mint 19
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20200610: initial version
# 20201023: commands reordered
# -------------------------------------------------------------
# start
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(. /etc/os-release; echo "$UBUNTU_CODENAME") stable"
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt-get update
# install packages
sudo apt install owncloud-client gnome-commander apache2 mariadb-server mariadb-client php php-mysql filezilla sysvbanner figlet man-db dropbox fdupes tigervnc-viewer util-linux tree samba imagemagick txt2html ffmpeg lynx php-pear python-pdfminer traceroute gocr netpbm libjpeg-progs php7.2-gd python-pip php-mbstring stellarium gnome-maps w3m python3-dateutil pidgin chromium-browser openssh-server thunderbird whois brave-browser apt-transport-https curl apt-transport-https ca-certificates gnupg-agent software-properties-common mmv

# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/#trusted.gpg.d/brave-browser-release.gpg add -
# install most recent version from the official repository
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
# install plex: sudo dpkg -i plexmediaserver_1.18.0.1913-e5cc93306_amd64.deb

# install truecrypt: 
# sudo ./truecrypt-7.2-setup-x64

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

# home office 
# sudo dpkg -i o-vpn_amd64_18.deb

# install mega
# sudo dpkg -i megasync-xUbuntu_18.04_amd64.deb 

# Python 2.7.15rc1 packages
# pip install html2text
# pip install setuptools
# pip install virtualenv

# python data science environment
# pip install geopandas matplotlib descartes ipython jupyter

#docker installation
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo apt --fix-broken

# to install Docker Compose:
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
