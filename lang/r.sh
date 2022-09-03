# update indices
sudo apt update -qq -y
# install two helper packages we need
sudo apt install --no-install-recommends software-properties-common dirmngr -y
# add the signing key (by Michael Rutter) for these repos
# To verify key, run gpg --show-keys /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc 
# Fingerprint: 298A3A825C0D65DFD57CBB651716619E084DAB9
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
# add the R 4.0 repo from CRAN -- adjust 'focal' to 'groovy' or 'bionic' as needed
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"

# install R
sudo apt install --no-install-recommends r-base

# add 5000 dps
add-apt-repository ppa:c2d4u.team/c2d4u4.0+

# add repos
sudo apt-get install -y libxml2-dev libcurl4-openssl-dev libssl-dev -y

sudo apt install zypper -y
sudo zypper install unixODBC-devel -y

sudo apt install unixodbc-dev -y
sudo apt-get install libpq-dev -y
