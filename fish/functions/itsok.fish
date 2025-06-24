function itsok --argument target
    if test -d $target
        xattr -dr com.apple.quarantine $target
    else
        xattr -d com.apple.quarantine $target
    end
end
