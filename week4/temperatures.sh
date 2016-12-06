#!/bin/bash
usage() { echo "\
    -c: for coldest temperatures
    -w: for warmest temperatures
    -b for both temperatures
    -a to produce ASCII output instead of eps
    -h for help "
    1>&2; exit 1; }

while getopts ":c :w :b :a :h" opt; do
  case $opt in
    c)
      type=cold
      ;;
    w)
      type=warm
      ;;
    b)
      type=both
      ;;
    a)
      style='dumb'
      ;;
    h)
      echo "Try following flags:"
      usage
      ;;
    \?)
      echo 'Unknown argument, try:'
      usage
      ;;
  esac
done


old_date=""
max=0
min=100
filename=$(basename $1)

#best
rm -rf /tmp/filename

for line in $(find $1* -name *temps.txt);do
    date=$(echo $line | grep -ho '\d\d\d\d.\d\d.\d\d')
    temp=$(grep -ho 'PROCESSOR_ZONE *[0-9]*C' $line  | grep -ho '[0-9]\+' )    
    
    if [ "$temp" -gt "$max" ];then
        max=$temp
    fi

    if [ "$temp" -lt "$min" ];then
        min=$temp
    fi
    
    if [ "$date" != "$old_date" ];then
        case $type in
            warm)
                echo $date $max  >> /tmp/$filename
                ;;
            cold)
                echo $date $min  >> /tmp/$filename
                ;;
            both)
                echo $date $max $min  >> /tmp/$filename
                ;;
        esac
        max=0
        min=100
        temp=0
    fi
    old_date=$date
done
gnuplot -e "outfile='$filename'; infile='/tmp/$filename'; outputstyle='$style'" temperatures.gnuplot