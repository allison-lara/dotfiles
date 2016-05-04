#!/bin/bash
# Git editor wrapper so that I get a console vim when running under tmux or
# iTerm2 and a MacVim otherwise

if [[ -n "$TMUX" || -n "$ITERM_SESSION_ID" ]]; then
    vim --nomru $*
else
    mvim -f --nomru -c "au VimLeave * !open -a Terminal" $*
fi