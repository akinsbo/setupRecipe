UBUNTU=ubuntu:16.04
NGINX=nginx:1.13.1
IMAGE=$NGINX
echo "pulling the image to use"
sudo docker pull $IMAGE
echo "taging the image as localhost:5000/my-$IMAGE"
sudo docker tag $IMAGE localhost:5000/my-$IMAGE
echo "pushing the image to the local registry runnung at localhost:5000"
sudo docker push localhost:5000/my-$IMAGE
echo "removing locally cached Image"
sudo docker image remove $IMAGE
sudo docker image remove localhost:5000/my-$IMAGE
