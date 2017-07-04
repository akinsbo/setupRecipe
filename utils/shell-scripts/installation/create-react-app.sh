#!/bin/dash
DEV_FRONTEND_DIR = "dev/frontend_dev/"

echo "**Welcome to project b**"
echo "installing nodejs"
sudo apt-get update
sudo apt-get install -g nodejs
echo "installing to node into /usr/bin/env to avoid such error"
sudo apt-get update
sudo apt-get install nodejs-legacy
echo "installing npm"
sudo apt-get update
sudo apt-get install npm
echo "upgrade node to stable version"
sudo npm cache clean -f
sudo npm install -g n
sudo n stable
echo "installing reactjs"
sudo apt-get update
sudo npm install create-react-app

