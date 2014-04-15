#!/usr/bin/env bash

while read p; do
    printf -v a "INSERT INTO states VALUES(DEFAULT, '$NEXDCP30STATE', %s);" $p
    psql -U postgres -d development -c "$a"
done
