#!/bin/bash

for inputfile in find $@/**; do
    prefix=${inputfile%.jpg}
    outputfile=$prefix-hipstah.jpg
    convert -sepia-tone 60% +polaroid $inputfile $outputfile
done
