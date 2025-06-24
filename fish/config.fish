bind \cf complete

# Look for various tools an initialize them if present
if test (which rbenv ^ /dev/null)
    status --is-interactive; and source (rbenv init -|psub)
end

if test (which direnv ^ /dev/null)
    direnv hook fish | source
end

if test (which fzf ^ /dev/null)
    fzf --fish | source
end

if test -d ~/go
    set -gx GOPATH ~/go
    set PATH $GOPATH/bin $PATH
end

if test -d ~/.local/bin
    set PATH ~/.local/bin $PATH
end

