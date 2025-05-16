function pman
    man -t $argv | ps2pdf - - | open -f -a "Preview"
end
