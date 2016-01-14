#!/bin/bash

sudo apt-get install -y libasound2-dev libconfuse-dev libaudiofile-dev libpci-dev

if [ ! -e ~/repos/external/pommed-light ]; then
  git clone http://github.com/bytbox/pommed-light ~/repos/external/pommed-light
fi

if [ ! -e /usr/bin/pommed ]; then
  cd ~/repos/external/pommed-light
  make
  sudo cp pommed/pommed /usr/bin/
  sudo mkdir /usr/share/pommed
  sudo cp pommed/data/* /usr/share/pommed/
  sudo cp pommed.conf.mactel /etc/pommed.conf
  sudo cp pommed.init /etc/init.d/pommed
  sudo chmod +x /etc/init.d/pommed
  cd -
fi

# For some reason, the keys won't function without mouseemu installed
sudo apt-get install -y mouseemu
