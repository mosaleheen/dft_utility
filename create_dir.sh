#!/bin/bash -x

# Purpose: For any files with .cell extension, create same named directory
#          and generate a POSCAR

copy_from_dir="/work/saleheen/source_inputs/vasp_opt"

for i in *.cell; 
	do nam=`echo $i | sed 's/.cell//g'`; 
	mkdir $nam; 
	mv $nam.cell $nam/;
	cd $nam;
        cp $copy_from_dir/* .
	cd ../
done
