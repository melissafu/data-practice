#!/bin/bash

# create/delete temp directory
# mkdir temp

# backup directory
mkdir backup
cp *.csv ./backup

# convert sepideharc.csv to csv
paste -d, -s sepideharc.csv > sepideharc.csv.tmp
mv sepideharc.csv.tmp sepideharc.csv

# replace pipes in shantank03.csv with commas
tr "|" "," < shantank03.csv > shantank03.csv.tmp
mv shantank03.csv.tmp shantank03.csv

# make header
echo "ghuser,heightcm,wakeuptime,semestersleft,distancefromhome" > 00varheader.csv

# concatenate header and all csv into one file
cat *.csv > classdata.csv

# remove temp directory
# rm -r temp
