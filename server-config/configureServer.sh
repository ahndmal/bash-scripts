sudo apt-get update

sudo apt install git

#### Tools
yes | sudo apt-get install curl
yes | sudo apt-get install zip
yes | sudo apt-get install unzip

#### Docker
yes | sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
yes | sudo apt-get install docker-ce docker-ce-cli containerd.io
docker --version
# Add your user to the 'docker' group
sudo groupadd docker
#sudo usermod -aG docker $USER
sudo usermod -aG docker $USER && newgrp docker
# CHange DOcker logging
#sudo nano /etc/docker/daemon.json
# {
#   "log-driver": "local",
#   "log-opts": {
#     "max-size": "10m"
#   }
# }

### Docker-Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo ">>> Docker-Compose installed!!"
docker-compose --version

#### SDKman
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version
yes | sdk i java 8.0.302-open
sdk i maven 3.8.2
#sdk use java 8.0.302-open
sdk default java 8.0.302-open

### User
adduser dev
usermod -aG sudo dev

#### NginX
yes | sudo apt-get update
yes | sudo apt-get install nginx
sudo ufw app list
sudo ufw allow 'Nginx HTTP'
sudo ufw status
systemctl status nginx

### Install Certbot
yes | sudo add-apt-repository ppa:certbot/certbot
yes | sudo apt-get update
yes | sudo apt install python3-certbot-nginx
# sudo nano /etc/nginx/sites-available/default
sudo \cp -r nginx_domain_example /etc/nginx/sites-available/default # -> change file according to your domain before copying
# sudo scp configureServer.sh root@23.88.99.93:/root/docker/config.sh
# server_name dev.beastiehut.cyou;
sudo nginx -t
sudo systemctl reload nginx
sudo ufw allow 'Nginx Full' && sudo ufw delete allow 'Nginx HTTP'

#### Certbot
#sudo certbot --nginx -d example.com -d www.example.com
sudo certbot --nginx -d comments.beastiehut.cyou	# # -> Add necessary domain/sub-domain
sudo certbot renew --dry-run
#sudo nano /etc/nginx/sites-available/default # add proxy data to /location {}

sudo nginx -t
sudo systemctl restart nginx
