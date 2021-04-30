#!/bin/bash -x

# Purpose: Find dimer calculations from Jianmins TS calculations

total=`find . -type d -name "dyn_matr" -print | wc -l`
dir=`find . -type d -name "dyn_matr" -print`
for i in `seq 1 1 ${total}`
	do
	clean_dir=`echo "$dir" | head -$i | tail -1 | sed 's/dyn_matr//g'`
	cp -r $clean_dir DIM-$i
done
