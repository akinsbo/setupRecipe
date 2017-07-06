UBUNTU_NAME=ubuntu
NGINX_NAME=nginx
IMAGE_NAME=$NGINX_NAME
PREFIX=my
echo "viewing docker regitry at http://localhost:5000/v2/_catalog "
curl http://localhost:5000/v2/_catalog
echo "listing tag for image $PREFIX-$IMAGE_NAME at http://localhost:5000/v2/$PREFIX-$IMAGE_NAME/tags/list"
curl http://localhost:5000/v2/$PREFIX-$IMAGE_NAME/tags/list
