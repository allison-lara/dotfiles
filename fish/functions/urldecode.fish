function urldecode --argument url
    if test -z $url
        read url
    end
  string unescape --style=url $url
end
