### Misc tools

sudo pacman -S git tmux neovim emacs zip unzip eza 

################# yay
sudo pacman -S git
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R andrii:andrii ./yay-git
cd yay-git
sudo pacman -S --needed base-devel
makepkg -si

##### use yay (https://www.tecmint.com/install-yay-aur-helper-in-arch-linux-and-manjaro/)
sudo yay -Syu

# gparted
sudo yay -S gparted

# yay - chrome
yay -S google-chrome

# make
sudo pacman -S make

sudo pacman -S helix
helix --health

sudo pacman -Syu 

# docker
sudo pacman -Syu
sudo pacman -S docker
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -aG docker $USER

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# GO
wget https://go.dev/dl/go1.24.3.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.24.3.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin

#GTK / C
sudo pacman -Sy base-devel

#Java / sdkman
curl -s "https://get.sdkman.io" | zsh
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

# JDKs
sdk i java 19-open
sdk i java 11.0.12-open
sdk i java 8.0.302-open
sdk i java 22.3.r19-grl
