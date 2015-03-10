#!/bin/bash

sudo sh bootstrap.sh
sh bootstrap_user.sh

sudo apt-get install -y xinit
sudo apt-get install -y i3
sudo apt-get install -y xterm
# TODO: determine if necessary
# sudo apt-get install -y x11-server-utils
# TODO: determine if necessary
# sudo apt-get install ncurses...
sudo apt-get install -y firefox

if [ ! -e /usr/share/fonts/truetype/firamono ]; then
  sudo mkdir -p /usr/share/fonts/truetype/firamono
  cd /usr/share/fonts/truetype/firamono && \
  sudo wget http://github.com/mozilla/Fira/raw/master/ttf/FiraMono-Bold.ttf && \
  sudo wget http://github.com/mozilla/Fira/raw/master/ttf/FiraMono-Medium.ttf && \
  sudo wget http://github.com/mozilla/Fira/raw/master/ttf/FiraMono-Regular.ttf
fi

cp files/bash_profile ~/.bash_profile
cp files/vimrc ~/.vimrc
cp files/i3_config ~/.i3/config
cp files/Xresources ~/.Xresources

