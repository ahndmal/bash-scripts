######################## Helix

if [ "$OS_ID" == "ubuntu" ]; then
    echo "Running on Ubuntu."

    sudo add-apt-repository ppa:maveonair/helix-editor
    sudo apt update
    sudo apt install helix
elif [ "$OS_ID" == "fedora" ]; then
    echo "Running on Fedora."

    sudo dnf install helix

elif [ "$OS_ID" == "arch" ]
    echo "Running arch"

    sudo pacman -S helix

else
    #    
fi
