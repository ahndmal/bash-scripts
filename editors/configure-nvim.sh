## https://github.com/junegunn/vim-plug

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# get init.vim example file
curl https://github.com/ahndmal/.dotfiles/raw/main/.config/nvim/init.vim

mkdir ~/.config/nvim

mv init.vim ~/.config/nvim

