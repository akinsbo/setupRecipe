INSTALL_SCRIPTS_DIR = shell-scripts/installation
SETUP_SCRIPTS_DIR = shell-scripts/setups
VIEW_SCRIPTS_DIR = shell-scripts/view
#using space or tab is an important choice in formatting @echo statements
help:
	@echo
	@echo "Author: Olaolu Akinsete"
	@echo
	@echo " Commands: "
	@echo "	help - show this message"
	@echo "	install-docker-jenkins-react - install docker, jenkins and react"
	@echo "	install-docker -  installs docker on device. if device is not amd-64, please edit dev/utils/shell-scripts/installation/docker.sh"
	@echo "	install-jenkins - installs jenkins on device"
	@echo "	install-reactjs - installs nodejs, npm and create-react-app"
	@echo "	url - view url"
	@echo "	test-producer	- Run the unit tests for the procuder"
	@echo "	deps - Check for all dependecies"
	@echo "On a fresh Linux system, Use 'make install-all' command./
	if you run into any errors, check the installation-scripts folder/
	$(INSTALL_SCRIPTS_DIR) or setups folder at $(SETUP_SCRIPTS_DIR)"

install-all:
	@echo "installing docker"
	sudo bash $(INSTALL_SCRIPTS_DIR)/docker.sh
	@echo "installing Jenkins"
	sudo bash $(INSTALL_SCRIPTS_DIR)/jenkins.sh
	@echo "installing nodejs, npm and create-react-app"
	sudo bash $(INSTALL_SCRIPTS_DIR)/create-react-app.sh

install-docker:
	@echo "installing docker"
	sudo bash $(INSTALL_SCRIPTS_DIR)/docker.shinstall-jenkins:

install-jenkins:
	@echo "installing Jenkins"
	sudo bash $(INSTALL_SCRIPTS_DIR)jenkins.sh

install-reactjs:
	@echo "installing nodejs, npm and create-react-app"
	sudo bash $(INSTALL_SCRIPTS_DIR)/create-react-app.sh

setup-docker-private-reg:
	@echo "installing docker private registry"
	sudo bash $(SETUP_SCRIPTS_DIR)/docker-registry-setup.sh

#setup-reactjs-project:
	#@echo "Install reactjs for frontend"
	##sudo ln -s /usr/bin/nodejs /usr/bin
	#mkdir frontend_dev
	#sudo create-react-app frontend_dev
	#
	#
pull-image-to-docker-private-reg:
		@echo "installing docker private registry"
		sudo bash $(SETUP_SCRIPTS_DIR)/pull-image-to-docker-registry.sh
		sudo docker images

stop-docker-registry:
	@echo "as with any container, use docker stop"
	sudo docker stop registry

view-images-in-registry:
	@echo "viewing images in registry"
	sudo bash $(VIEW_SCRIPTS_DIR)/view-docker-registry-images.sh

remove-docker-registry:
	@echo "Stopping the registry container"
	sudo docker stop registry
	@echo "Removing the registry container"
	sudo docker rm -v registry
