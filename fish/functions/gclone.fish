function gclone --argument org repo
	git clone git@github.banksimple.com:allison/$repo.git
    cd $repo
    git remote add upstream git@github.banksimple.com:$org/$repo.git
    git make-fetch-happen
    git sync
end
