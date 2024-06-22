echo "==== starting installations..."
echo date +"%d/%m/%Y - %H:%M:%S"

sudo apt-get update -y

sudo apt-get install zsh tmux zip unzip neovim git fuse

echo ">>>> Installed main tools \n"

curl --compressed -o- -L https://yarnpkg.com/install.sh | bash

mkdir tools && cd tools

echo ">>> Installing my bash scripts from GIT \n"

git clone https://github.com/AndriiMaliuta/bash-scripts

chmod -R +x .

sudo apt-get install build-essential libz-dev zlib1g-dev -y

### Helix
sudo add-apt-repository ppa:maveonair/helix-editor
sudo apt update
sudo apt install helix


./cli/configure_ZSH.sh 
./tools/sdkman.sh

