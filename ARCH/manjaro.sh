# chrome
git clone https://aur.archlinux.org/yay-git.git
cd yay-git
makepkg -si
yay -S google-chrome

# make
sudo pacman -S make
# neovim
sudo pacman -Syu neovim

# docker
sudo pacman -Syu
sudo pacman -S docker
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -aG docker $USER
