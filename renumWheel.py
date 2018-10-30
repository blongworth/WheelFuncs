#!/usr/bin/python

# Script to modify position numbering in an AMS results file
# drop specifies positions to drop
# offset specifies an offset to position numbers

import csv
import sys

try:
    wheelfile = sys.argv[1]
except:
    print ('Needs a filename argument')
    sys.exit(2)

tsvRows = []
drop = [2,3] #wheelpos to drop
offset = 0 #wheelpos offset

with open(wheelfile) as tsv:
    reader = csv.reader(tsv, dialect="excel-tab")
    for line in reader:
        if reader.line_num < 7: #don't mess with header
            tsvRows.append(line)
            continue
        if int(line[1]) in drop:
            continue
        line[1]  = int(line[1]) + offset
        tsvRows.append(line)
    tsv.close()

with open((wheelfile + '.m'), 'w') as out:
    writer = csv.writer(out, dialect="excel-tab")
    for row in tsvRows:
        writer.writerow(row)
    out.close()
