
# Add your user to the 'docker' group
sudo groupadd docker

#sudo usermod -aG docker $USER
sudo usermod -aG docker $USER && newgrp docker

echo ">>> groups configured!"
