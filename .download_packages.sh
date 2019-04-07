#!/bin/bash

\cp /home/lyonk71/lyonk71/.vimrc ~
\cp /home/lyonk71/lyonk71/.bashrc ~
\cp /home/lyonk71/lyonk71/.download_packages.sh ~
\cp /home/lyonk71/lyonk71/.ide.sh ~
\cp -r /home/lyonk71/lyonk71/.git ~

# update system
sudo apt update -y
sudo apt upgrade -y

# upgrade vim for xterm_clipboard support
sudo apt install vim-gtk

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim || git -c http.sslVerify=false clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# install youcompleteme
sudo apt-get install cmake -y
sudo apt-get install python-dev python3-dev -y
sudo apt install build-essential cmake python3-dev -y
cd ~/.vim/bundle/YouCompleteMe
python3 install.py
vim +PluginInstall +qall

# get pip
sudo apt install python3-pip -y
sudo apt install ipython3

rm -rf /home/lyonk71/lyonk71



