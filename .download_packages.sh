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

# download vim-instant-markdown dependencies
sudo apt install xdg-utils -y
sudo apt install curl -y
sudo apt install nodejs -y

# set up jvim --------------------------------------------------------------------
mv ~/wsl-setup/.tmux.conf ~/.tmux.conf 
chmod u+x ~/wsl-setup/jvim
sudo mv ~/wsl-setup/jvim /bin/jvim

# copy F1, F2, F3, and F4 shortcuts to ~
cp /home/lyonk71/wsl-setup/.f1_script.sh ~
cp /home/lyonk71/wsl-setup/.f2_script.sh ~
cp /home/lyonk71/wsl-setup/.f3_script.sh ~
cp /home/lyonk71/wsl-setup/.f4_script.sh ~

# prepare vim-instant-markdown
sudo npm -g install bufferutil
sudo npm -g install utf-8-validate
sudo npm -g install instant-markdown-d

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim || git -c http.sslVerify=false clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# update jedi-vim (vundle plugin)
git submodule update --init --recursive ~/.vim/bundle/jedi-vim

# install tmux package manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm || git -c http.sslVerify=false clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install black for vim-autoformat
pip3 install black


