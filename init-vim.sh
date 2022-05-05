
# node npm python3 go yarn

sudo apt install vim

git clone https://github.com/selikapro/vimrc-likapro

#cd .vim
cd vimrc-likapro/
# https://github.com/junegunn/vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mv vimrc-likapro/.vimrc ./

cd .vim/

cp vimrc-likapro/hotkeys .vim
chmod 444 .vim/hotkeys 

vim .vimrc 

sudo apt-get install ripgrep 
