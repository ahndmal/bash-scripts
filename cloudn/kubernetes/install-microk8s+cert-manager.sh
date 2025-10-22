# install microk8s
sudo apt-get update
sudo apt install snapd

sudo snap install microk8s --classic --channel=1.21
sudo usermod -a -G microk8s $USER

sudo chown -f -R $USER ~/.kube
su - $USER
microk8s status --wait-ready

### install cert-manager
kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/v1.6.1/cert-manager.yaml

###
