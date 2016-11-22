#!/bin/bash
# Find the highest temperature
#grep
#      -o, --only-matching
# 	     Prints only the matching part of the lines.
max_value=0
echo 'running, might take time'
time for i in $(find lost24/monitor/2011.11* -name *temps.txt); do
    curr_value=$(cat $i | grep PROCESSOR_ZONE | grep -o -E '[0-9]+' | sed -n 2p)
    if [ $max_value -lt $curr_value ]; then
        max_value=$curr_value
    fi
done
echo "Highest value found: $max_value"