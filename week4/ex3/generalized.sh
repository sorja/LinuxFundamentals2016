#!/bin/bash

# Takes arg a dir
# Generates gnuplot

old_date=""
max=0
min=100
filename=$(basename $@)

#best
rm -rf /tmp/filename

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
        echo $date $max $min >> /tmp/$filename
        max=0
        min=100
        temp=0
    fi

    old_date=$date
done

 gnuplot -e "outfile='$filename'; infile='/tmp/$filename'" generalized.gnuplot