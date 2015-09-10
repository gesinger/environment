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
sudo apt-get install -y wicd-curses
sudo apt-get install -y powertop
sudo apt-get install -y htop
sudo apt-get install -y pm-utils
sudo apt-get install -y xclip

if [ ! -e /usr/share/fonts/truetype/firamono ]; then
  sudo mkdir -p /usr/share/fonts/truetype/firamono
  cd /usr/share/fonts/truetype/firamono && \
  sudo wget http://github.com/mozilla/Fira/raw/master/ttf/FiraMono-Bold.ttf && \
  sudo wget http://github.com/mozilla/Fira/raw/master/ttf/FiraMono-Medium.ttf && \
  sudo wget http://github.com/mozilla/Fira/raw/master/ttf/FiraMono-Regular.ttf
fi

cp files/vimrc ~/.vimrc
cp files/i3_config ~/.i3/config
cp files/Xresources ~/.Xresources
cp -r files/bin ~/

chmod u+x bin/*
