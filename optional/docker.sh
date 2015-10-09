#!/usr/bin/env bash

sudo apt-get install -y curl
sudo curl -sSL https://get.docker.com | sh
sudo usermod -aG docker garrett
