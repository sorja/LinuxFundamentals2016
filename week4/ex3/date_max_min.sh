#!/bin/bash

# A script finding the max temperature of a
# day from a file in format:
# Sensor   Location              Temp       Threshold
# ------   --------              ----       ---------
# #1        PROCESSOR_ZONE       23C/73F    62C/143F
# #2        CPU#1                29C/84F    73C/163F
# #3        I/O_ZONE             31C/87F    68C/154F
# #4        CPU#2                21C/69F    73C/163F
# #5        POWER_SUPPLY_BAY     16C/60F    55C/131F

old_date=""
max=0
min=100
for line in $(find $@* -name *temps.txt);do
    date=$(echo $line | grep -ho '\d\d\d\d.\d\d.\d\d')
    temp=$(grep -ho 'PROCESSOR_ZONE *[0-9]*C' $line  | grep -ho '[0-9]\+' )    
    
    if [ "$temp" -gt "$max" ];then
        max=$temp
    fi

    if [ "$temp" -lt "$min" ];then
        min=$temp
    fi
    
    if [ "$date" != "$old_date" ];then
        echo $date $max $min
        max=0
        min=100
        temp=0
    fi

    old_date=$date
done
