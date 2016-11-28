#!/bin/bash

# Format raw wheeler output for USAMS
# convert xlsx wheelfiles to tsv using csvkit
# remove first line if neccesary
# make all warmups 10s and make first standard 11 runs with awk

infile="$1"
if [ ! -e "$infile" ]
then
	echo "$infile doesn't exist!"
	exit
fi

outfile="${infile%.*}.txt"

if [ -e "$outfile" ]
then
	echo "$outfile exists!"
	exit
fi

# convert to tsv
/usr/local/bin/in2csv $infile | /usr/local/bin/csvformat -T | \
awk '{if (NR==1 && /^\*/) next};1' | \
awk -F"\t" 'NR!=1 {$7="10";}1' OFS="\t" \
> $outfile
