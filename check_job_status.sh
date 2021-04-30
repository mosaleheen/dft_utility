#!/bin/bash 

# Purpose: Check if jobs crossed assigned NSW 

cnsw=`grep F= OSZICAR | tail -1 | awk -F " " '{print $1}'`
	if [ $cnsw == 500 ]; then
		pwd
	  	echo "The job didn't finish"
	else
	  	echo "You're done"
	fi
