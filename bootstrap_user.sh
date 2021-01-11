# Git

git config --global user.email "gesinger@gmail.com"
git config --global user.name "Garrett Singer"
git config --global core.editor "vim"

# VIM

cp files/vimrc ~/.vimrc
mkdir -p ~/.vim
cp -r files/vim/ftplugin ~/.vim/

if [ ! -e ~/.vim/autoload/pathogen.vim ]; then
  sudo apt-get install -y curl
  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
fi

if [ ! -d ~/.vim/bundle/vim-sensible ]; then
  git clone git://github.com/tpope/vim-sensible.git ~/.vim/bundle/vim-sensible
fi

if [ ! -d ~/.vim/bundle/goyo.vim ]; then
  git clone git://github.com/junegunn/goyo.vim.git ~/.vim/bundle/goyo.vim
fi

if [ ! -d ~/.vim/bundle/limelight.vim ]; then
  git clone git://github.com/junegunn/limelight.vim.git \
    ~/.vim/bundle/limelight.vim
fi

# tmux

cp files/tmux_config ~/.tmux.conf

# Bash

cat files/bashrc_append >> ~/.bashrc
