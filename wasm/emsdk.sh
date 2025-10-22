# C (emscripten)

# https://emscripten.org/docs/getting_started/downloads.html
# https://github.com/emscripten-core/emsdk

if command -v cmake &> /dev/null; then
    echo "cmake is installed and accessible."
    # You can now safely use cmake
    cmake --version
    
    git clone https://github.com/emscripten-core/emsdk.git
    cd emsdk
    git pull

    # Download and install the latest SDK tools.
    ./emsdk install latest

    # Make the "latest" SDK "active" for the current user. (writes .emscripten file)
    ./emsdk activate latest

    # Activate PATH and other environment variables in the current terminal
    source ./emsdk_env.sh
else
    echo "cmake is not installed or not in your PATH."
    echo "Please install cmake or add it to your PATH."
    exit 1 # Exit with an error

    # sudo apt-get install python3
    # sudo apt-get install cmake
fi
