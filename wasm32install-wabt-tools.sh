# https://github.com/webassembly/wabt

git clone --recursive https://github.com/WebAssembly/wabt
cd wabt
git submodule update --init

# install cmake (pacman / apt)

mkdir build
cd build
cmake ..
cmake --build .
