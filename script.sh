#!/bin/dash
DEV_FRONTEND_DIR = "dev/frontend_dev/"

echo "**Welcome to project b**"
echo "installing nodejs"
sudo apt-get update
sudo apt-get install nodejs
echo "installing npm"
sudo apt-get install npm
echo "installing reactjs"
sudo npm install -g create-react-app

