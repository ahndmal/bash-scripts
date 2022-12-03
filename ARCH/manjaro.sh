# yay
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si

# yay - chrome
yay -S google-chrome

# make
sudo pacman -S make
# neovim
sudo pacman -Syu neovim

# snap
sudo pacman -S snapd
sudo systemctl enable --now snapd.socket

sudo pacman -Syu zip unzip

# docker
sudo pacman -Syu
sudo pacman -S docker
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -aG docker $USER

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# GO
sudo tar -C /usr/local -xzf go1.19.3.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin

#GTK / C
sudo pacman -Sy base-devel

#Java / sdkman
curl -s "https://get.sdkman.io" | zsh
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

sdk i java 19-open
sdk i java 11.0.12-open
sdk i java 8.0.302-open
sdk i java 22.3.r19-grl
