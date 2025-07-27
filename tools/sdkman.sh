sudo apt-get update -y
sudo apt install zip -y
sudo apt install unzip -y
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version
echo "zip/unzip/SDK installed!"

# java
sdk i java

# maven / gradle
yes | sdk i maven 3.8.6

sdk i gradle
echo "maven/gradle installed!"

# groovy
sdk i groovy

# kotlin
sdk i kotlin

#quarkus/spring
sdk install quarkus
sdk install springboot

echo ">>> restarting BASH"
exec bash
