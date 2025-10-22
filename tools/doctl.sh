
sudo snap install doctl

sudo snap connect doctl:kube-config
sudo snap connect doctl:ssh-keys :ssh-keys
sudo snap connect doctl:dot-docker

doctl auth init --context <NAME>

doctl auth list
doctl auth switch --context <NAME>

doctl account get
