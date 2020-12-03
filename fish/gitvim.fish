#!/usr/bin/env fish
if test -n "$VSCODE"
    code -w $argv
else
    vim --nomru $argv
end
