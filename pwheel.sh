#!/bin/bash

# format and print out wheelfile names on STDIN

awk -F "\t" 'BEGIN { OFS=FS }; { $2=substr($2, 1, 25); print }' $1 | \
	csvlook -t |\
	pr --length=63 --header=$1 | lpr -ocpi=13
