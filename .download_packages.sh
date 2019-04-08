#!/bin/bash


# update .vimrc
cat /home/lyonk71/wsl-setup/to_vimrc >> /home/lyonk71/.vimrc
# awk '!a[$0]++' .vimrc > .vimrctemp
# mv .vimrctemp .vimrc

# update .bashrc
cat /home/lyonk71/wsl-setup/to_bashrc >> /home/lyonk71/.bashrc
# awk '!a[$0]++' .bashrc > .bashrctemp
# mv .bashrctemp .bashrc

# update system
sudo apt update -y
sudo apt upgrade -y

# upgrade vim for xterm_clipboard support
sudo apt install vim-gtk

# get pip
sudo apt install python3-pip -y




