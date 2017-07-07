USER=olaolu
echo "installing docker compose"
sudo curl -L https://github.com/docker/compose/releases/download/1.14.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
sudo mv ./docker-compose /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo "testing installation"
sudo docker-compose --version
echo "installing bash completion"
sudo curl -L https://raw.githubusercontent.com/docker/compose/master/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose
echo "listing out the groups you belong to"
sudo groups $USER
echo "add yourself to the docker group"
sudo usermod -aG docker $USER
echo "docker should appear in the following list"
sudo groups $USER
echo "done"
