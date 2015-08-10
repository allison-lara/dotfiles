. ~/.config/fish/colors.fish
. ~/.config/fish/z.fish

set -gx EDITOR vim
set PATH ~/bin $PATH

# rbenv
status --is-interactive; and . (rbenv init -|psub)

eval (hub alias -s)

if test -f ~/.config/fish/local.fish
  . ~/.config/fish/local.fish
end
