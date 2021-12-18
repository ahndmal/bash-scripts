sudo snap install microk8s --classic
microk8s status --wait-ready
#registry istio
microk8s enable dashboard dns 