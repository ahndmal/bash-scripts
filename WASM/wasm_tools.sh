

#################### wasmtime (https://github.com/bytecodealliance/wasmtime)
curl https://wasmtime.dev/install.sh -sSf | bash

#################### wasmedge (https://wasmedge.org/docs/start/install/)
curl -sSf https://raw.githubusercontent.com/WasmEdge/WasmEdge/master/utils/install.sh | bash
source $HOME/.wasmedge/env

# curl -sSf https://raw.githubusercontent.com/WasmEdge/WasmEdge/master/utils/install.sh | sudo bash -s -- -p /usr/local

#################### WABT ( https://github.com/webassembly/wabt )

git clone --recursive https://github.com/WebAssembly/wabt
cd wabt
git submodule update --init

# install cmake (pacman / apt)
wget https://github.com/Kitware/CMake/releases/download/v3.26.0-rc5/cmake-3.26.0-rc5.tar.gz
tar -xvf cmake-3.26.0-rc5.tar.gz

# build
mkdir build
cd build
cmake ..
cmake --build .

