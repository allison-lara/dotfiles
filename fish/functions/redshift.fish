function redshift --argument env
	echo "::REDSHIFT::$env::"
	envcrypt ~/.secrets/redshift-$env.gpg psql
end
