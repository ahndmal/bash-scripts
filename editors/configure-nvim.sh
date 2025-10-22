## https://github.com/junegunn/vim-plug

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir ~/.config/nvim

wget -P ~/.config/nvim https://raw.githubusercontent.com/ahndmal/dotfiles/refs/heads/main/.config/nvim/init.vim

