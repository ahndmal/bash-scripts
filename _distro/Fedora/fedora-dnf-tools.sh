
#######################

sudo dnf -y install tmux git zip unzip neovim

############### Fonts

sudo dnf -y install fira-code-fonts
sudo dnf install powerline-fonts

############### GCloud CLI

sudo tee -a /etc/yum.repos.d/google-cloud-sdk.repo << EOM
[google-cloud-cli]
name=Google Cloud CLI
baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el9-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=0
gpgkey=https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOM

sudo dnf install libxcrypt-compat.x86_64
sudo dnf install google-cloud-cli

###################### docker (https://docs.docker.com/engine/install/fedora/)
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl start docker
sudo docker run hello-world

######################## Haskell related tools
## GHCUP
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

sudo dnf install libicu-devel ncurses-devel zlib-devel

