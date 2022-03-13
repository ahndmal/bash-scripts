sudo apt-get update -y
sudo apt install zip -y
sudo apt install unzip -y
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

# java
sdk i java 8.0.302-open -y
sdk i java 11.0.12-open -y
sdk i java 17.0.2-open -y

yes | sdk i maven 3.8.4
sdk i gradle 7.3.3 -y

# groovy
sdk i groovy 4.0.0 -y

#sdk use java 8.0.302-open
sdk default java 8.0.302-open
