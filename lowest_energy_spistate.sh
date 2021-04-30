#!/bin/bash


# Purpose: Find the lowest energy spin state from spin calculations and run
#	   a strict criteria spin calculation with larger basis sets.

script_dir="/home/saleheen/guaiacol_scripts"

low=`for j in */; do cd $j; head -2 energy | tail -1 | awk -F " " '{print $2}'; cd ../; done | sort -n | head -1`; 
for k in */ 
	do cd $k 
	cur=`head -2 energy | tail -1 | awk -F " " '{print $2}'` 
	if (( $(echo "$low == $cur" | bc -l) )); then 
		oldnam=`pwd | rev | awk -F "/" '{print $1}' | rev`
		$script_dir/tight_turbo.sh
	fi 
	cd ../	
done
mv $oldnam Final${oldnam} 

