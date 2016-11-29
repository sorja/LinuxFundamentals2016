#!/bin/bash

clear


length=$@

if ! [ "$length" -eq "$length" ] 2>/dev/null; then
  printf "Try to give a number as an argument!\nex. ./longchat 1\n\n"
  exit
fi

if [ "$length" -gt 1 ]; then
    echo "Longcat"
  else
    echo "Shortcat"
fi

printf "\n"
echo "    /\___/\ " 
echo "   /       \ " 
echo "  |  #    # | " 
echo "  \     @   | " 
echo "   \   _|_ / " 
echo "   /       \______ " 
echo "  / _______ ___   \ " 
echo "  |_____   \   \__/ " 
echo "   |    \__/ " 
for i in $(seq 1 $length)
  do echo "   |       | " 
done
echo "   /        \ " 
echo "  /   ____   \ " 
echo "  |  /    \  | " 
echo "  | |      | | " 
echo " /  |      |  \ " 
echo " \__/      \__/ " 
