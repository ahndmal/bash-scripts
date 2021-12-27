yes | sudo apt-get update 
sudo apt install zip
sudo apt install unzip
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version
yes | sdk i java 8.0.302-open
yes | sdk i maven 3.8.2
#sdk use java 8.0.302-open
sdk default java 8.0.302-open
