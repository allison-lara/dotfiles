function pman
	set -l PSFILE (mktemp -t manpage-$argv).ps
	man -t $argv > $PSFILE
    open $PSFILE
end
