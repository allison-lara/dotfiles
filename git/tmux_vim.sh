#!/bin/bash
# Git editor wrapper so that I get a console vim when running under tmux or
# iTerm2 and a MacVim otherwise, unless VSCODE is there then just use that

if [[ -n "$TMUX" || -n "$ITERM_SESSION_ID" ]]; then
    vim --nomru "$@"
elif [[ -n "$VSCODE" ]]; then
    code -w "$@"
else
    mvim -f --nomru
fi
