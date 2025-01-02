
X_COLOR="\u001b[36m"
COLOR_RESET='\u001b[0m'
echo ">>>> ${X_COLOR} Initiating environment configuration ${COLOR_RESET}"

echo 


######################## CLI

source fish/configure_fish.sh

######################## ZSH

# source cli/configureZSH.sh

######################## Helix



######################## Neovim

#https://github.com/junegunn/vim-plug

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


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

source frame/helidon-cli.sh

source tools/sdkman.sh

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
