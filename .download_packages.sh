#!/bin/bash


# update .vimrc
mv /home/lyonk71/wsl-setup/.vimrc /home/lyonk71/.vimrc

# update .bashrc
cat /home/lyonk71/wsl-setup/to_bashrc >> /home/lyonk71/.bashrc

# update system
sudo apt update -y
sudo apt upgrade -y

# upgrade vim for xterm_clipboard support
sudo apt install vim-gtk -y

# get pip
sudo apt install python3-pip -y

# get ipython
sudo apt install ipython3 -y

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim || git -c http.sslVerify=false clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# install black for vim-autoformat
pip3 install black


