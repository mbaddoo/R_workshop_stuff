#!/bin/bash

#########################################################################
# This file creates a combined tsv file from the individual country files
#########################################################################

OUTPUT_FILE="output/combined_gapMinder.tsv"

echo Building combined country data file
# add column headers to file 
cat data/clean/country.cc.txt > $OUTPUT_FILE

# move file with column headers aside so it won't match wildcard
mv -v data/clean/country.cc.txt data/clean/country.cc.processed
sleep 2

cat data/clean/*.cc.txt 
sleep 2
# everything that matches *.cc.txt, stick it on the bottom of outputfile (concatenate)
cat data/clean/*.cc.txt >> $OUTPUT_FILE

# move back to the way the country.cc.txt file was
mv -v data/clean/country.cc.processed data/clean/country.cc.txt

