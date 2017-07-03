#!/bin/dash
UBUNTU=ubuntu:16.04
IMAGE=$UBUNTU
echo "use registry image to deploy an container call registry"
sudo docker run -d -p 5000:5000 --restart=always --name registry registry:2
echo "pulling the image to use"
sudo docker pull $IMAGE
echo "taging the image as localhost:5000/my-$IMAGE"
sudo docker tag $IMAGE as localhost:5000/my-$IMAGE
sudo docker image remove $IMAGE
sudo docker image remove localhost:5000/my-$IMAGE
sudo docker pull localhost:5000/my-$IMAGE
echo "setting the registry to start automatically"
echo "mount the images in the mnt/registry registry docker folder to host's var/lib/registry folder"
sudo docker run -d \
  -p 5000:5000 \
  --restart=always \
  --name registry \
  -v /mnt/registry:/var/lib/registry \
  registry:2
