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

wget https://github.com/ahndmal/.dotfiles/raw/main/helix/config.toml
wget https://github.com/ahndmal/.dotfiles/raw/main/helix/languages.toml

mv *.toml ~/.config/helix

#############################
./install-fonts.sh
./cli/configure_ZSH.sh 
./tools/sdkman.sh

####################### Java

sdk i java 22.0.1-graalce
sdk i java 22-open
sdk i java 17.0.11-tem
sdk i java 11.0.23-tem
sdk i java 8.0.412-tem

####################### GO
# https://go.dev/doc/install
# https://go.dev/dl/

wget https://go.dev/dl/go1.22.4.linux-amd64.tar.gz
tar -xvf go1.22.4.linux-amd64.tar.gz

#### GCP

./gcloud/install-gcp-cli.sh




