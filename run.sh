
X_COLOR="\u001b[36m"
COLOR_RESET='\u001b[0m'
echo ">>>> ${X_COLOR} Initiating environment configuration ${COLOR_RESET}"

OS_ID=$(grep '^ID=' /etc/os-release | cut -d'=' -f2 | tr -d '"')

######################## CLI

source fish/configure_fish.sh

######################## ZSH

source cli/configureZSH.sh

######################## Helix

if [ "$OS_ID" == "ubuntu" ]; then
    echo "Running on Ubuntu."

    sudo add-apt-repository ppa:maveonair/helix-editor
    sudo apt update
    sudo apt install helix
elif [ "$OS_ID" == "fedora" ]; then
    echo "Running on Fedora."

    sudo dnf install helix

elif [ "$OS_ID" == "arch" ]
    echo "Running arch"

    sudo pacman -S helix
else
    #    
fi

######################## Neovim

mkdir ~/.config/nvim

#https://github.com/junegunn/vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

wget -P ~/.config/nvim https://raw.githubusercontent.com/ahndmal/dotfiles/refs/heads/main/.config/nvim/init.vim

######################### Browsers

### EDGE
# https://www.microsoft.com/en-us/edge/business/download?form=MA13FJ

######################### ATLASSIAN 

source atlas-b/sdk.sh

######################### Docker
source docker.sh
######################### CLOUD-NATIVE

echo ">>> \u001b[36minstalling Cloud tools\u001b[0m"
source cloud-native/pack=cli.sh

######################## JAVA

source tools/sdkman.sh

source frame/helidon-cli.sh

####################### Python

source tools/pyenv.sh

####################### NodeJS

source tools/nvm_nodejs.sh

####################### PLs

echo "\u001b[35m>>> installing PLs\u001b[0m"
source lang/cpp.sh
source lang/lua.sh
source lang/rust.sh

####################### HTTP

echo ">>> installing HTTP tools\u001b[0m"

source net/http-tools.sh

####################### Fonts

source fira-code-font.sh

####################### END
echo "#######################################################"
echo ">>>> \u001b[32mFinished installation!\u001b[0m"
