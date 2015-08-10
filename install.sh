#!/bin/bash

ln -fs rc/tmux.conf ~/.tmux.conf
ln -fs rc/spacemacs ~/.spacemacs

mkdir -p ~/.config
pushd ~/.config
ln -Fs fish ~/rc/fish
popd
