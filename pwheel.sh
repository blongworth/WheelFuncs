#!/bin/bash

# Print formatted wheelfile 
# Wheelfile name on STDIN

awk -F "\t" 'BEGIN { OFS=FS }; { $2=substr($2, 1, 24); print }' $1 | \
	csvlook -t |\
	pr --length=63 --header=$1 | lpr -ocpi=14
