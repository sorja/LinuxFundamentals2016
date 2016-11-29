#!/bin/bash
for d in "$@"
do
    date=$(basename "$d")
    echo $date $(grep -ho 'ZONE *[0-9]*C' "$d"/*/*temps.txt | grep -ho '[0-9]\+' | sort -n | head -n1)
done