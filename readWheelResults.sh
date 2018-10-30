#!/bin/sh

# read CFAMS results file and look at with csvtools

in2csv --format csv CFAMS\ Results/CFAMS120915R.XLS | tail -n +5 | csvcut -c 1-5 | csvlook | less
