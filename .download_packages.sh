#!/bin/bash

/home/lyonk71/wsl-setup/to_vimrc >> /home/lyonk71/.vimrc
uniq /home/lyonk71/.vimrc

/home/lyonk71/wsl-setup/to_bashrc >> /home/lyonk71/.bashrc
uniq /home/lyonk71/.bashrc


# update system
sudo apt update -y
sudo apt upgrade -y

# upgrade vim for xterm_clipboard support
sudo apt install vim-gtk

# get pip
sudo apt install python3-pip -y




