#! /usr/bin/env bash

set -x

git clone https://github.com/gmarik/Vundle.vim bundle/Vundle.vim
vim +BundleInstall +qall

cd bundle/YouCompleteMe
./install.py --clang-completer --gocode-completer

