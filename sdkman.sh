yes | sudo apt-get update 
sudo apt install zip -y
sudo apt install unzip -y
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version
yes | sdk i java 8.0.302-open
yes | sdk i java 11.0.12-open
yes | sdk i maven 3.8.2
sdk i gradle 7.3.3 -y
#sdk use java 8.0.302-open
#sdk default java 8.0.302-open
