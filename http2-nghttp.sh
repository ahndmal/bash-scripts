
# https://nghttp2.org/documentation/

echo "Installing required tools for NGHTTP"

sudo apt-get install g++ clang make binutils autoconf automake \
  autotools-dev libtool pkg-config \
  zlib1g-dev libcunit1-dev libssl-dev libxml2-dev libev-dev \
  libevent-dev libjansson-dev \
  libc-ares-dev libjemalloc-dev libsystemd-dev \
  ruby-dev bison libelf-dev

# https://github.com/nghttp2/nghttp2/releases/tag/v1.51.0

wget https://github.com/nghttp2/nghttp2/releases/download/v1.51.0/nghttp2-1.51.0.tar.gz

tar xf nghttp2-1.51.0.tar.gz
cd nghttp2-1.51.0
./configure
make

