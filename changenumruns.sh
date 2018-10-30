#!/bin/sh

# Awk commands to change columns of a tsv wheelfile...


# change the 8th column of file to 0, skipping first line
awk -F"\t" 'NR!=1{$8="0";}1' OFS="\t" file

# -F"\t" input file is tab delimited. NR!=1 match all but first line.
# Change col 8 to 0.  1 prints all lines, changed or not.
# OFS="\t"


# run only standards
# 
awk -F"\t" 'NR!=1 && !/OX-I/ {$8="0";}1' OFS="\t" USAMS020516.txt

# make all warmups 10s
awk -F"\t" 'NR!=1 {$7="10";}1' OFS="\t" USAMS020516.txt


# make first standard 11 runs
awk -F"\t" '/OX-I/ && !x {x=($8="11");}1' OFS="\t" USAMS020516.txt

# match "OX-I" and x = FALSE. Make x TRUE after first match. Change col 8 of match to "11"
