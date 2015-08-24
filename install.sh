#!/bin/bash

pushd ~
ln -fs rc/tmux.conf .tmux.conf
ln -fs rc/spacemacs .spacemacs
ln -fs rc/vim/vimrc .vimrc
ln -fs rc/vim .vim 
popd

mkdir -p ~/.config
pushd ~/.config
ln -Fs fish ~/rc/fish
popd
