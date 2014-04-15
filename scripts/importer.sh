#!/usr/bin/env bash

# Iterate over all data files and bulk insert content without header.
for file in ../tmp/*.csv
do
    tail -n +19  $file | ./inserter.sh
done



