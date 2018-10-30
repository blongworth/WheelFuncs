#!/bin/bash

# check for unconverted excel format wheelfiles, convert to tsv and format

# use arg for directory to run in
# use current dir if no arg

if [ "$1" ]
then
	if [ -d "$1" ]
	then
		dir="$1"
	else
		echo "Directory doesn't exist"
		exit
	fi
else
	dir=$(pwd)
fi

for file in $dir/*.(xls|xlsx)"
do
	echo $file
	#if ! [ -e file.txt ]
	#then
	#	fwheel file
	#	conv = $conv + 1
	#fi
done

#echo "Converted $conv files"

# do roughly the same using find:
#find -maxdepth 1 -name "*.xls" -o -name "*.xlsx" -exec fwheel {} \;
