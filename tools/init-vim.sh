
# node npm python3 go yarn

sudo apt install vim

git clone https://github.com/selikapro/vimrc-likapro

mv vimrc-likapro/.vimrc ./

# https://github.com/junegunn/vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp vimrc-likapro/hotkeys .vim
chmod 444 .vim/hotkeys 

vim .vimrc 

sudo apt-get install ripgrep -y

############# VIM #################
:PlugInstall
:CocInstall coc-pyright
:CocInstall coc-tsserver
:CocInstall coc-go
