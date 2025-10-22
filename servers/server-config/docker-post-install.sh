# https://docs.docker.com/engine/install/linux-postinstall/
# Add your user to the 'docker' group

sudo groupadd docker

sudo usermod -aG docker $USER

newgrp docker

docker run hello-world

# sudo systemctl enable docker.service
# sudo systemctl enable containerd.service
