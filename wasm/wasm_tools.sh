
#################### Wasmtime (https://github.com/bytecodealliance/wasmtime)

curl https://wasmtime.dev/install.sh -sSf | bash

#################### Wasmedge (https://wasmedge.org/docs/start/install/)

curl -sSf https://raw.githubusercontent.com/WasmEdge/WasmEdge/master/utils/install.sh | bash
source $HOME/.wasmedge/env

# curl -sSf https://raw.githubusercontent.com/WasmEdge/WasmEdge/master/utils/install.sh | sudo bash -s -- -p /usr/local

################### Wasm PACK

cargo install wasm-pack

############# Cargo Component

cargo install --locked cargo-component

#################### WASM TOOLS (https://github.com/bytecodealliance/wasm-tools)

cargo install --locked wasm-tools

#################### WABT TOOLS ( https://github.com/webassembly/wabt )

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

############################# EMSDK (https://emscripten.org/docs/getting_started/downloads.html)

# Get the emsdk repo
git clone https://github.com/emscripten-core/emsdk.git

# Enter that directory
cd emsdk

# Fetch the latest version of the emsdk (not needed the first time you clone)
git pull

# Download and install the latest SDK tools.
./emsdk install latest

# Make the "latest" SDK "active" for the current user. (writes .emscripten file)
./emsdk activate latest

# Activate PATH and other environment variables in the current terminal
source ./emsdk_env.sh

# ./emsdk install 1.38.45
./emsdk install latest

### Graalwasm (https://github.com/oracle/graal/tree/master/wasm)
wget https://gds.oracle.com/download/wasm/archive/graalwasm-24.2.0-linux-amd64.tar.gz

##### WASI SDK (https://github.com/WebAssembly/wasi-sdk/releases)

wget https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-25/wasi-sdk-25.0-x86_64-linux.tar.gz
