#!/usr/bin/env bash

HOMEDIR=/home/vagrant

apt-get update
apt-get install -y docker
apt-get install -y git

# VIM

mkdir -p $HOMEDIR/.vim/autoload $HOMEDIR/.vim/bundle && \
curl -LSso $HOMEDIR/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd $HOMEDIR/.vim/bundle && \
git clone git://github.com/tpope/vim-sensible.git

cd $HOMEDIR/.vim/bundle && \
git clone git://github.com/nanotech/jellybeans.vim.git
