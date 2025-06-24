source ~/.config/fish/colors.fish
source ~/.config/fish/z.fish

set -gx EDITOR vim
set -gx TZ 'America/Los_Angeles'
set PATH ~/bin /opt/homebrew/bin $PATH
set JAVA_HOME (/usr/libexec/java_home -v 1.8)

bind \cf complete

# rbenv
if test (which rbenv ^ /dev/null)
    status --is-interactive; and source (rbenv init -|psub)
end

if test (which hub ^ /dev/null)
    eval (hub alias -s)
end
if test (which fzf ^ /dev/null)
    fzf --fish | source
end

if test -f ~/.config/fish/local.fish
    source ~/.config/fish/local.fish
end

if test -d ~/go
    set -gx GOPATH ~/go
    set PATH $GOPATH/bin $PATH
end

if test -d ~/.local/bin
    set PATH ~/.local/bin $PATH
end

if test -d /Applications/Postgres.app
    set -l PSQL_PATH "/Applications/Postgres.app/Contents/Versions/latest/bin"
    set PATH $PSQL_PATH $PATH
end

# OPAM configuration
# . ~/.opam/opam-init/init.fish > /dev/null 2> /dev/null or true
#
direnv hook fish | source

test -e /Users/allison/.iterm2_shell_integration.fish ; and source /Users/allison/.iterm2_shell_integration.fish ; or true

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

