#!/bin/bash

#Script to convert xlsx wheelfiles to tsv
#Uses csvkit

in="/usr/local/bin/in2csv"
out="/usr/local/bin/csvformat -T"
infile="$1"
outfile="${infile%.*}.txt"

if [ -e "$outfile" ]
then
	echo "$outfile exists!"
	exit
else
	$in $infile | $out > $outfile
fi
