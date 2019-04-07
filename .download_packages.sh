#!/bin/bash

\cp /home/lyonk71/lyonk71/.vimrc ~
\cp /home/lyonk71/lyonk71/.bashrc ~
\cp /home/lyonk71/lyonk71/.download_packages.sh ~

# update system
sudo apt update -y
sudo apt upgrade -y

# upgrade vim for xterm_clipboard support
sudo apt install vim-gtk

# get pip
sudo apt install python3-pip -y




