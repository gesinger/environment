#!/bin/bash

cd ~/repos/external/qutebrowser/qutebrowser
git pull
tox -r -e mkvenv
