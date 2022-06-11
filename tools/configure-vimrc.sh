sudo apt install vim
git clone https://github.com/selikapro/vimrc-likapro
mv vimrc-likapro/.vimrc ./
chmod 444 .vim/hotkeys 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    cp vimrc-likapro/hotkeys .vim
sudo apt-get install ripgrep -y

vim .vimrc
############# VIM #################
:PlugInstall
:CocInstall coc-pyright
:CocInstall coc-tsserver
:CocInstall coc-go
