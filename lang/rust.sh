
echo "nstalling RUST..."

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# https://docs.rs/openssl/latest/openssl/
sudo apt-get install pkg-config libssl-dev -y

rustup update

# install openssl for build on Ubuntu
sudo apt install libssl-dev

# install Nightly builds for compatibility
rustup install nightly
cargo +nightly install racer
