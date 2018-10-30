#!/usr/bin/python

# Format raw wheeler output for USAMS
# convert xlsx wheelfiles to tsv using csvkit
# remove first line if neccesary
# make all warmups 10s


# parse input

# check that input file exists

# check that output file doesn't exist

# read excel file
from csvkit import convert
inputfile = open(file.csv)
file = convert.xls2csv(inputfile)


for line in file:

    # set all warmups to 10s

    # define groups

# write tsv
