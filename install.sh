#!/bin/bash

ln -fs rc/tmux.conf ~/.tmux.conf
mkdir -p ~/.config
pushd ~/.config
ln -Fs fish ~/rc/fish
popd
