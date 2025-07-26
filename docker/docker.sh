echo "Installing Docker..."
yes | sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update -y
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
yes | sudo apt-get update
echo ">>> soft updated!"
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
echo "Docker installed!"
docker --version

# Add your user to the 'docker' group
sudo groupadd docker
#sudo usermod -aG docker $USER
sudo usermod -aG docker $USER && newgrp docker
echo ">>> groups configured!"
# Change Docker logging
#sudo nano /etc/docker/daemon.json
# {
#   "log-driver": "local",
#   "log-opts": {
#     "max-size": "10m"
#   }
# }

### Docker-Compose
echo "Installing Docker-Compose..."
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo ">>> Docker-Compose installed!!"
docker-compose --version

# YUM
#sudo yum-config-manager --enable ol7_addons 
#sudo yum install docker-engine -y 
#sudo systemctl start docker 
#sudo systemctl enable docker



