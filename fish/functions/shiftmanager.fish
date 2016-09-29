function shiftmanager
	cd ~/src/analytics/shiftmanager-simple
    set -x PGDATABASE analytics
    envcrypt ~/.secrets/redshift-prod.gpg $PWD/venv/bin/ipython -im shiftmanager_simple
    cd -
end
