#!/bin/bash -x

# Purpose: For any files with .cell extension, create same named directory
#          and generate a POSCAR

script_dir="/home/saleheen/guaiacol_scripts"
#copy_from_dir="/work/saleheen/02_guaiacol_hdo/DIMERSource"
copy_from_dir="/work/saleheen/02_guaiacol_hdo/VOPTSource"

for i in *.cell; 
	do nam=`echo $i | sed 's/.cell//g'`; 
	mkdir $nam; 
	mv $nam.cell $nam/;
	cd $nam;
	$script_dir/direct_poscar.sh
        cp $copy_from_dir/* .
	cd ../
done
