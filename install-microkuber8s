yes | sudo apt install snapd
echo "snapd installed"

sudo snap install microk8s --classic
echo "microk8s installed"

sudo usermod -a -G microk8s $USER
sudo chown -f -R $USER ~/.kube

su - $USER
echo "permissions configures"
microk8s status --wait-ready

microk8s enable dashboard dns registry ingress istio
