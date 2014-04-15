#!/usr/bin/env bash

# Insert a line into database.
# Make sure a user "postgres" exists.
while read p; do
    # WARNING: This is an EXTREMELY BROKEN (lot of collisions)  way of generating IDs. 
    # It is here just for testing purposes. Replace as soon as possible!
    printf -v a "INSERT INTO states VALUES($(echo $RANDOM$RANDOM/3 | bc),%s);" $p
    psql -U postgres -d development -c "$a"
done
