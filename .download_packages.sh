# update system
sudo apt update -y
sudo apt upgrade -y

# install git
sudo apt install git -y

# install tmux
sudo apt install tmux -y

# upgrade vim for xterm_clipboard support
sudo apt install vim-gtk -y

# get pip
sudo apt install python3-pip -y

# get ipython
sudo apt install ipython3 -y

# update .vimrc
cp $HOME/wsl-setup/.vimrc $HOME/.vimrc

# update .tmux.conf
cp $HOME/wsl-setup/.tmux.conf $HOME/tmux.conf 

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/plugin/Vundle.vim || git -c http.sslVerify=false clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/plugin/Vundle.vim
vim +PluginInstall +qall

# update jedi-vim (vundle plugin)
git submodule update --init --recursive ~/.vim/bundle/jedi-vim

# copy F1, F2, F3, and F4 shortcuts to ~
cp $HOME/wsl-setup/.f1_script.sh ~
cp $HOME/wsl-setup/.f2_script.sh ~
cp $HOME/wsl-setup/.f3_script.sh ~
cp $HOME/wsl-setup/.f4_script.sh ~
