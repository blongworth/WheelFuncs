Was working on this with openpyxl,
now using csvkit
command to convert xlsx to tsv:
in2csv $INFILE | csvformat -T > $OUTFILE

wheel conversion script is conwheel.sh. Accepts wheel name as arg.
