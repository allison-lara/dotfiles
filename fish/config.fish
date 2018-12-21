source ~/.config/fish/colors.fish
source ~/.config/fish/z.fish

set -gx EDITOR vim
set -gx TZ 'America/Los_Angeles'
set PATH ~/bin $PATH
set JAVA_HOME (/usr/libexec/java_home -v 1.8)

bind \cf complete

# rbenv
if test (which rbenv ^ /dev/null)
    status --is-interactive; and source (rbenv init -|psub)
end

if test (which hub ^ /dev/null)
    eval (hub alias -s)
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

if test (which direnv ^ /dev/null)
    eval (direnv hook fish)
end

if test -d /Applications/Postgres.app
    set -l PSQL_PATH "/Applications/Postgres.app/Contents/Versions/latest/bin"
    set PATH $PSQL_PATH $PATH
end

# OPAM configuration
# . ~/.opam/opam-init/init.fish > /dev/null 2> /dev/null or true
