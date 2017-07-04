#.SILENT
IMAGE_NAME = image-name
CONTAINER_NAME = container-name
CONTAINER_PORT = 80
HOST_PORT = 3002

#using space or tab is an important choice in formatting @echo statements
help:
	@echo
	@echo "Author: Olaolu Akinsete"
	@echo
	@echo " Commands: "
	@echo "	help - show this message"
	@echo "	build - build docker image if not already done"
	@echo "	run -  start this service, and all of its deps, locally(docker)"
	@echo "	stop - stop and remove container and image"
	@echo "	url - view url"
	@echo "	test-producer	- Run the unit tests for the procuder"
	@echo "	deps - Check for all dependecies"

build:  
	sudo docker build -t $(IMAGE_NAME) .

run: 	
	sudo docker run -d -p $(HOST_PORT):$(CONTAINER_PORT) -v /home/olaolu/Documents/projecta/src/:/var/www/html/ --name $(CONTAINER_NAME) $(IMAGE_NAME)

stop: 
	sudo docker stop $(CONTAINER_NAME)
	sudo docker rm $(CONTAINER_NAME)
	sudo docker rmi $(IMAGE_NAME)

url: 
	curl http://localhost:$(HOST_PORT)

deps:	
	@echo "*docker"

