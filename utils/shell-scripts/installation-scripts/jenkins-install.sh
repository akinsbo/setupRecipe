#!/bin/dash
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins
echo 'Upgrade jenkins'
sudo apt-get update
sudo apt-get install jenkins
echo 'autoremove un-needed packages'
sudo apt-get autoremove


