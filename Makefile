DEV_DIR = dev
DEV_FRONTEND_DIR = dev/frontend_dev/



stop-docker-registry: 
	@echo "as with any container, use docker stop"
	sudo docker stop registry
	@echo "To remove the container, use docker rm"
	sudo docker stop registry && docker rm -v registry


