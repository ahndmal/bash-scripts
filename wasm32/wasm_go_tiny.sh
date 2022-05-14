wget https://github.com/tinygo-org/tinygo/releases/download/v0.23.0/tinygo_0.23.0_amd64.deb
sudo dpkg -i tinygo_0.23.0_amd64.deb

export PATH=$PATH:/usr/local/bin

tinygo version

#sudo apt-get install gcc-avr
#sudo apt-get install avr-libc
#sudo apt-get install avrdude
