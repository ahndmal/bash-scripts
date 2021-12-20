sudo apt-get update
sudo apt install snapd

sudo snap install microk8s --classic --channel=1.21
sudo usermod -a -G microk8s $USER

sudo chown -f -R $USER ~/.kube
su - $USER
microk8s status --wait-ready
