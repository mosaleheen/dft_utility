#!/bin/bash

# Purpose: Go three layers deep, check if the calculation is done, if not,
#	   resubmit the calculation.

for i in */*/*/
	do cd $i
		cnsw=`grep F= OSZICAR | tail -1 | awk -F " " '{print $1}'`
		if [ $cnsw == 500 ]; then
		pwd
		mv CONTCAR POSCAR
		msub job*
		else
		pwd
		echo "You're done"
		fi
	cd ../../../
	done
