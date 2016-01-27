#!/bin/bash
sudo apt-get install -y git vim gcc g++ cmake
sudo add-apt-repository ppa:numix/ppa
sudo apt-get update
sudo apt-get install -y numix-gtk-theme numix-icon-theme-circle
sudo apt-get install -y numix-wallpaper-*
sudo apt-get install -y gnome-tweak-tool
git clone git@github.com:wongxingjun/k-vim.git
cd k-vim
chmod +x install.sh
./install.sh
mkdir -p /usr/lib/java
mkdir -p /usr/lib/scala
sudo apt-get install ctags cscope
sudo apt-get install python-dev
