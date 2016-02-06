# Git

git config --global user.email "gesinger@gmail.com"
git config --global user.name "Garrett Singer"
git config --global core.editor "vim"

# VIM

cp files/vimrc ~/.vimrc

if [ ! -e ~/.vim/autoload/pathogen.vim ]; then
  sudo apt-get install -y curl
  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
fi

if [ ! -d ~/.vim/bundle/vim-sensible ]; then
  cd ~/.vim/bundle && \
  git clone git://github.com/tpope/vim-sensible.git
fi

if [ ! -d ~/.vim/bundle/vim-distinguished ]; then
  cd ~/.vim/bundle && \
  git clone git://github.com/Lokaltog/vim-distinguished.git
fi

if [ ! -d ~/.vim/bundle/goyo.vim ]; then
  cd ~/.vim/bundle && \
  git clone git://github.com/junegunn/goyo.vim.git
fi

if [ ! -d ~/.vim/bundle/limelight.vim ]; then
  cd ~/.vim/bundle && \
  git clone git://github.com/junegunn/limelight.vim.git
fi

if [ ! -d ~/.vim/bundle/vim-airline ]; then
  cd ~/.vim/bundle && \
  git clone git://github.com/bling/vim-airline.git
fi

if [ ! -d ~/.vim/bundle/ctrlp.vim ]; then
  cd ~/.vim/bundle && \
  git clone git://github.com/kien/ctrlp.vim.git
fi

# Bash

cat files/bashrc_append >> ~/.bashrc
