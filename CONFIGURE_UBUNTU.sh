echo "==== starting installations..."
date +"%d/%m/%Y - %H:%M:%S"

sudo apt-get update -y

sudo apt-get install zsh tmux zip unzip neovim emacs git 

echo " >>> Installed main tools \n"

# yarn
curl --compressed -o- -L https://yarnpkg.com/install.sh | bash

# tools
mkdir tools && cd tools

echo " >>> Installing my bash scripts from GIT \n"

git clone https://github.com/ahndmal/bash-scripts
cd bash-scripts

chmod -R +x .

# main C build tools
sudo apt-get install build-essential libz-dev zlib1g-dev -y

### Helix
sudo add-apt-repository ppa:maveonair/helix-editor
sudo apt update
sudo apt install helix

wget https://github.com/ahndmal/.dotfiles/raw/main/helix/config.toml
wget https://github.com/ahndmal/.dotfiles/raw/main/helix/languages.toml

mv config.toml languages.toml ~/.config/helix

#############################
./tools/install-fonts.sh
./cli/configure_ZSH.sh 
./tools/sdkman.sh

####################### Java

sdk i java 25.0.2-graalce
sdk i java 23.0.1-open
sdk i java 17.0.18-amzn
sdk i java 11.0.30-tem

####################### GO
# https://go.dev/doc/install
# https://go.dev/dl/

wget https://go.dev/dl/go1.26.0.linux-amd64.tar.gz
tar -xvf go1.26.0.linux-amd64.tar.gz

#### GCP

./gcloud/install-gcp-cli.sh

### AWS

### Azure




