#!/bin/bash

pushd ~
ln -fs dotfiles/tmux.conf .tmux.conf
ln -fs dotfiles/vim/vimrc .vimrc
ln -fs dotfiles/vim .vim 
popd

mkdir -p ~/.config
pushd ~/.config
ln -Fs ~/dotfiles/fish fish
ln -Fs ~/dotfiles/git git
popd
