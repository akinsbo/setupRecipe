REGISTRY_NAME=registry
TAG_NAME=2
echo "use registry image to deploy an container call registry"
echo "sudo docker run -d -p 5000:5000 --restart=always --name registry $REGISTRY_NAME:$TAG_NAME"
echo "setting the registry to start automatically"
echo "mount the images in the mnt/registry registry docker folder to host's var/lib/registry folder"
sudo docker run -d \
  -p 5000:5000 \
  --restart=always \
  --name registry \
  -v /mnt/registry:/var/lib/registry \
  $REGISTRY_NAME:$TAG_NAME
