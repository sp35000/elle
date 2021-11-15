#!/bin/sh
# -------------------------------------------------------------
# App       : Elle
# Program   : nodeversion.sh
# Function  : changes nodejs version in workstation
# Site      : https://bitbucket.org/sp35000/
# Author    : Celso Kikuchi <sp35000@yahoo.com.br>
# -------------------------------------------------------------
# 20210318: initial version
# node -> /home/yzmu/d/cl/node-v14.15.1-linux-x64/bin/node
# nodejs -> /home/yzmu/d/cl/node-v14.15.1-linux-x64/bin/node
# npm -> /home/yzmu/d/cl/node-v14.15.1-linux-x64/bin/npm
# npx -> /home/yzmu/d/cl/node-v14.15.1-linux-x64/bin/npx
# -------------------------------------------------------------
# initialize variables
SOURCE_FOLDER=$1
TARGET_FOLDER="/usr/local/bin"
# -------------------------------------------------------------
# start
sudo rm "$TARGET_FOLDER/node"
sudo rm "$TARGET_FOLDER/node.js"
sudo rm "$TARGET_FOLDER/npm"
sudo rm "$TARGET_FOLDER/npx"
sudo ln -s "$SOURCE_FOLDER/bin/node" "$TARGET_FOLDER/node"
sudo ln -s "$SOURCE_FOLDER/bin/node" "$TARGET_FOLDER/nodejs"
sudo ln -s "$SOURCE_FOLDER/bin/npm" "$TARGET_FOLDER/npm"
sudo ln -s "$SOURCE_FOLDER/bin/npx" "$TARGET_FOLDER/npx"
node -v
npm -v
npx -v
