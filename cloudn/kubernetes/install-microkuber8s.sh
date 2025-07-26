#nano /etc/docker/daemon.json
#{
#    "insecure-registries" : ["localhost:32000"] 
#}

# repare
sudo mv /etc/apt/preferences.d/nosnap.pref ~/Documents/nosnap.backup
sudo apt update -y

## install snapd for Linux Mint

sudo apt install snapd -y
#yes | sudo apt install snapd
echo "snapd installed"

sudo snap install microk8s --classic
echo "microk8s installed"

sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube
newgrp microk8s

su - $USER
echo "permissions configures"
microk8s status --wait-ready

microk8s enable dashboard dns registry ingress istio
