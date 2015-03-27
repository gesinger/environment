#!/usr/bin/env bash

sudo apt-get install -y python3-pyqt5 python3-pyqt5.qtwebkit python-tox
# Uses over a gig for requirements. Might not be worth it for help docs.
#sudo apt-get install -y asciidoc
if [ ! -e ~/repos/external/qutebrowser ]; then
  mkdir -p ~/repos/external/qutebrowser && \
  cd ~/repos/external/qutebrowser && \
  git clone http://github.com/The-Compiler/qutebrowser.git && \
  cd qutebrowser/qutebrowser && \
  #python3 scripts/asciidoc2html.py && \
  tox -e mkvenv
fi
