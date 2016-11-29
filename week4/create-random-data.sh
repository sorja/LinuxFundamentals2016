#!/bin/bash
length=$@

if ! [ "$length" -eq "$length" ] 2>/dev/null; then
  exit
fi

for i in $(seq 1 $length)
do
  echo $RANDOM $RANDOM
done
