. ~/.config/fish/colors.fish
. ~/.config/fish/z.fish

set -gx EDITOR vim
set PATH ~/bin $PATH

# rbenv
if test (which rbenv)
    status --is-interactive; and . (rbenv init -|psub)
end

if test (which rbenv)
    eval (hub alias -s)
end

if test -f ~/.config/fish/local.fish
  . ~/.config/fish/local.fish
end
