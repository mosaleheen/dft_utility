#!/bin/bash -x

# When we have a lot of caluclations for the same structure, this'll help to find the 
# lowest energy structure and submit the frequency calculation for only that one.

script_dir="/home/saleheen/dft_utility"

low=`for j in */; do cd $j; grep entropy= OUTCAR | tail -1 | awk -F "=" '{print $3}' | xargs; cd ../; done | sort -n | head -1`; 
	for k in */ 
		do cd $k 
		cur=`grep entropy= OUTCAR | tail -1 | awk -F "=" '{print $3}' | xargs` 
			if (( $(echo "$low == $cur" | bc -l) )); then 
			pwd 
			$script_dir/dynamic_matrix_prep.sh 
			fi 
		cd ../ 
	done
