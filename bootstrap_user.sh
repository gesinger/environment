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

if [ ! -d ~/.vim/bundle/vim-distinguished ]; then
  git clone git://github.com/Lokaltog/vim-distinguished.git \
    ~/.vim/bundle/vim-distinguished
fi

if [ ! -d ~/.vim/bundle/goyo.vim ]; then
  git clone git://github.com/junegunn/goyo.vim.git ~/.vim/bundle/goyo.vim
fi

if [ ! -d ~/.vim/bundle/limelight.vim ]; then
  git clone git://github.com/junegunn/limelight.vim.git \
    ~/.vim/bundle/limelight.vim
fi

if [ ! -d ~/.vim/bundle/vim-airline ]; then
  git clone git://github.com/bling/vim-airline.git ~/.vim/bundle/vim-airline
fi

if [ ! -d ~/.vim/bundle/vim-airline-themes ]; then
  git clone git://github.com/vim-airline/vim-airline-themes.git \
    ~/.vim/bundle/vim-airline-themes
fi

if [ ! -d ~/.vim/bundle/vimproc.vim ]; then
  git clone https://github.com/Shougo/vimproc.vim.git ~/.vim/bundle/vimproc.vim
  cd ~/.vim/bundle/vimproc.vim
  make
  cd -
fi

if [ ! -d ~/.vim/bundle/unite.vim ]; then
  git clone git://github.com/Shougo/unite.vim.git ~/.vim/bundle/unite.vim
fi

if [ ! -d ~/.vim/bundle/typescript-vim ]; then
  git clone https://github.com/leafgarland/typescript-vim.git \
    ~/.vim/bundle/typescript-vim
fi

# Bash

cat files/bashrc_append >> ~/.bashrc
