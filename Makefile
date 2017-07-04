DEV_DIR = dev
DEV_FRONTEND_DIR = dev/frontend_dev/
UTIL_SCRIPTS_DIR = utils/shell-scripts

help:
	@echo	""
	@echo	"Author: Olaolu Akinsete"
	@echo "Commands"
	@echo "	help - generates this"
	@echo	"	install-all - installs docker(for amd64 systems), \
	create-react-app (with nodejs and npm), jenkins. \
	Best for a virgin Linux OS setup"
	@echo "	run-frontend - builds and runs create-react-app and docker"
# install all you need on fresh linux system
#
install-all:
	@echo "	navigating into utils folder"
	@echo "	running all install data"
	cd $(UTIL_SCRIPTS_DIR)&& $(MAKE) install-all

run-frontend:
	@echo "	navigating into the frontend dev directory $(DEV_FRONTEND_DIR)"
	cd $(DEV_FRONTEND_DIR)&& $(MAKE) docker-build
	@echo "	run-build create-react-app and build docker"
	@echo "	run docker"
	cd $(DEV_FRONTEND_DIR)&& $(MAKE) docker-run

stop-frontend:
	@echo "	stopping docker container"
	cd $(DEV_FRONTEND_DIR)&& $(MAKE) docker-stop
