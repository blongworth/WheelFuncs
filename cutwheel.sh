#!/bin/sh
#Read ams results file and format to make finding skipped samples easy

#read the file and strip header and comment line.
awk 'NR==5{print;exit}' $1 > out.txt
tail -n +7 $1 >> out.txt

#cut just date, pos, run, fm
cut -f1,2,3,4,15 out.txt
