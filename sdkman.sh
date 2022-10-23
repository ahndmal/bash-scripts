sudo apt-get update -y
sudo apt install zip -y
sudo apt install unzip -y
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version
echo "zip/unzip/SDK installed!"

# java
sdk i java 8.0.302-open -y  # change to the latest !
sdk i java 11.0.12-open -y
# sdk i java 18.0.2-open -y

# maven / gradle
yes | sdk i maven 3.8.6
sdk i gradle 7.5 -y
echo "maven/gradle installed!"

# groovy
sdk i groovy 4.0.0 -y

#sdk use java 8.0.302-open
sdk default java 8.0.302-open

#quarkus/spring
sdk install quarkus
sdk install springboot
