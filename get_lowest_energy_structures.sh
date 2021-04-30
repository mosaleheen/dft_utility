#!/bin/bash


# Purpose: Gets the geometries for the lowest energy structures, change 
# 	   the directory path to copy files somewhere else 

copy_base="/work/saleheen/02_guaiacol_hdo/02_pt_111/02_phenol_hyd/01-AdsorbedSpecies/Geometries"
#script_base="/home/saleheen/guaiacol_scripts/CIFPhenolPt"
script_base="/home/saleheen/bin/python_scripts"

low=`for j in */; do cd $j; grep entropy= OUTCAR | tail -1 | awk -F "=" '{print $3}' | xargs; cd ../; done | sort -n | head -1`; 
for k in */ 
	do cd $k 
	cur=`grep entropy= OUTCAR | tail -1 | awk -F "=" '{print $3}' | xargs` 
	if (( $(echo "$low == $cur" | bc -l) )); then 
		pwd
	        nam1=`pwd | rev | awk -F "/" '{print $1}' | rev `
		nam2=`pwd | rev | awk -F "/" '{print $2}' | rev `
		nam3=`pwd | rev | awk -F "/" '{print $3}' | rev | awk -F "-" '{print $2}'`
		echo $nam3-$nam2-$nam1
#		cp $script_base/{Headcoord,Mainheader,Tailcoord} .
#		$script_base/CIFFromContcar.sh
		$script_base/vasp_to_xyz.py
#		nam=`grep "MSUB -N" job-cascade-vasp544 | awk -F " " '{print $3}'`
#		cp POSCAR $copy_base/POSCARS/POSCAR-$nam3-$nam2-$nam1;
#		cp CONTCAR $copy_base/CONTCARS/CONTCAR-$nam3-$nam2-$nam1;
#		cp CONTCAR.cif $copy_base/CIFS/CONTCAR-$nam2-$nam1.cif
		cp output.xyz $copy_base/XYZ_CONTCARS/$nam2-$nam1.xyz
	fi 
	cd ../ 
done


