#!/bin/bash

sudo sh bootstrap.sh
sh bootstrap_user.sh

sudo apt-get install -y xinit
sudo apt-get install -y i3
sudo apt-get install -y xterm
sudo apt-get install -y x11-xserver-utils
# TODO: determine if necessary
# sudo apt-get install ncurses...
sudo apt-get install -y firefox
sudo apt-get install -y wicd-curses
sudo apt-get install -y powertop
sudo apt-get install -y htop
sudo apt-get install -y pm-utils
sudo apt-get install -y xclip
sudo apt-get install -y silversearcher-ag

if [ ! -e /usr/share/fonts/opentype/firamono ]; then
  sudo mkdir -p /usr/share/fonts/opentype/firamono
  cd /usr/share/fonts/opentype/firamono && \
  sudo wget http://github.com/mozilla/Fira/raw/master/otf/FiraMono-Bold.otf && \
  sudo wget http://github.com/mozilla/Fira/raw/master/otf/FiraMono-Medium.otf && \
  sudo wget http://github.com/mozilla/Fira/raw/master/otf/FiraMono-Regular.otf && \
  cd -
fi

sudo apt-get install -y roboto

sudo add-apt-repository ppa:no1wantdthisname/ppa
sudo apt-get update
sudo apt-get install fontconfig-infinality

cp files/vimrc ~/.vimrc
mkdir -p ~/.i3 && cp files/i3_config ~/.i3/config
cp files/Xresources ~/.Xresources
cp -r files/bin ~/

chmod u+x ~/bin/*
