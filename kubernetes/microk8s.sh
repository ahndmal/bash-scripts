# sudo apt-get update
# sudo apt install snapd

# sudo snap install microk8s --classic --channel=1.21
# sudo usermod -a -G microk8s $USER

# sudo chown -f -R $USER ~/.kube
# su - $USER
# microk8s status --wait-ready

yes | sudo apt-get update

yes | sudo apt install snapd
echo "snapd installed"

yes | sudo snap install microk8s --classic
echo "microk8s installed"

sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube

su - $USER
echo "permissions configures"
#microk8s status --wait-ready # - disabled for now

microk8s enable dashboard dns ingress istio
