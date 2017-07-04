#!/bin/dash
VERSION=17.06.0~ce-0~ubuntu
echo '**installing docker**'
echo 'for prod, first determine which docker version to install'
echo '-------------------------------------------------------'
apt-cache madison docker-ce
echo 'we have selected 17.06.0~ce-0~ubuntu'
echo '--------------------------------------------------------'
echo 'SETTING UP REPOSITORY'
sudo apt-get update
echo 'Installing packages to allow apt to use a repository over HTTPS:'
sudo apt-get install \apt-transport-https \ca-certificates \curl \software-properties-common
echo 'Add Docker’s official GPG key:'
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo 'Verify that the key fingerprint is 9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88.'
sudo apt-key fingerprint 0EBFCD88 
echo 'Please confirm that you got 
pub   4096R/0EBFCD88 2017-02-22
      Key fingerprint = 9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
uid                  Docker Release (CE deb) <docker@docker.com>
sub   4096R/F273FCD8 2017-02-22'
echo 'Setting up stable repository'
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
echo '--------------------------------------------------------'
echo 'INSTALLING DOCKER'
sudo apt-get update
sudo apt-get install docker-ce=$VERSION
echo 'Testing by creating helloworld image'
sudo docker run hello-world
echo '--------------------------------------------------------'

