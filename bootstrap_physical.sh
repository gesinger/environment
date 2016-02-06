#!/bin/bash

sudo sh bootstrap.sh
sh bootstrap_user.sh

sudo apt-get install -y \
  xinit \
  i3 \
  i3blocks \
  xterm \
  x11-xserver-utils \
  firefox \
  wicd-curses \
  powertop \
  htop \
  pm-utils \
  xclip \
  silversearcher-ag \
  argyll \
  fonts-roboto \
  software-properties-common

sudo add-apt-repository ppa:no1wantdthisname/ppa
sudo apt-get update
sudo apt-get install -y fontconfig-infinality

if [ ! -e /usr/share/fonts/opentype/firamono ]; then
  sudo mkdir -p /usr/share/fonts/opentype/firamono
  cd /usr/share/fonts/opentype/firamono && \
  sudo wget http://github.com/mozilla/Fira/raw/master/otf/FiraMono-Bold.otf && \
  sudo wget http://github.com/mozilla/Fira/raw/master/otf/FiraMono-Medium.otf && \
  sudo wget http://github.com/mozilla/Fira/raw/master/otf/FiraMono-Regular.otf && \
  cd -
fi

mkdir -p ~/.i3 && cp files/i3_config ~/.i3/config && \
  cp files/i3blocks_config ~/.i3blocks.conf
cp files/Xresources ~/.Xresources
cp -r files/bin ~/
chmod u+x ~/bin/*
cp files/xinitrc ~/.xinitrc

sudo cp files/xconf/* /usr/share/X11/xorg.conf.d/
