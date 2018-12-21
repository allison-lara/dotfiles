#! /usr/bin/env fish
function fishyvim -w vim
	if test -n "$VSCODE"
        code -w $argv
    else if test -n "$TMUX"
        vim --nomru $argv
    else
        mvim -f --nomru $argv
    end
end