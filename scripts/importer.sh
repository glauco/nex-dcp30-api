#!/usr/bin/env bash

for file in ../tmp/*.csv
do
    state=$(head -n +12 $file | tail -n 1 | cut -d : -f 2 | cut -d , -f 1 | cut -d " " -f 2)
    export NEXDCP30STATE=$state
    tail -n +19  $file | ./inserter.sh
done



