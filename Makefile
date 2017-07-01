DEV_DIR = dev
DEV_FRONTEND_DIR = dev/frontend_dev/




install-reactjs: 
	echo "Install reactjs for frontend"
	cd $(DEV_FRONTEND_DIR)
	create-react-app
