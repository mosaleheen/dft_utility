#!/bin/bash -x

###################################################################################################
#																					   			
#		  Purpose: To check the approximate values of spin in VASP calculations and 
#			   running spin state calculations in Turbomole ( This script is only for
#			   Ru slab and C,H & O species on top of it. For using on other metals 
#			   you do have to make some simple modifications.)																	   	
#	           Author: Mohammad Shamsus Saleheen, Department of Chemical Engineering,USC                                          
#	       	     Date: 04.06.14																	   
#   	     Modification:																	 
#  Reasons of Modification:																	   
#                                                               													   
####################################################################################################



copy_dir="/work/saleheen/02_guaiacol_hdo/02_pt_111/03_hyd_liquid_phase/source/turbosource"

## This part is about converting the POSCAR of VASP calculation to a coord file ##

vasp-build-supercell-from-poscar -f POSCAR -o XYZ > cluster.xyz
x2t cluster.xyz > coord

## This part is about checking the vasp spin value and total number of electrons for turbomole calculation

mag=$(grep mag OSZICAR | rev | awk -F " " '{print $1}' | rev)
Npt=$(grep -c Pt cluster.xyz)
Nc=$(grep -c C cluster.xyz)
Nh=$(grep -c H cluster.xyz)
No=$(grep -c O cluster.xyz)
Tot=`echo "($Npt * 18) + ($Nc * 6) + ($Nh * 1) + ( $No * 8)" | bc `					# Calculating total no of electrons i.e. (a+b)
NeN=$(printf '%.*f\n' 0 $mag)  										# Getting to nearest integer value

## This step is getting complpex (Check Pseudocode about the explanation).
## Bash can't deal decimal comparisons. Fucking bash!!!

      if [ $(( $Tot % 2)) == 0 ] 
      then
             if [ $(( $NeN % 2)) == 1 ]
             then
                    NeN=$(($NeN - 1))
             else
                    NeN=$NeN
             fi 
              
      else
             if [ $(( $NeN % 2)) == 0 ]
             then        
                    NeN=$(($NeN - 1))
             else
                    NeN=$NeN
             fi     
      fi

## This part is about calculating number of upspin and downspin electrons, making directories names as those Spin states and Submitting jobs ##

x=$Tot   
y=$NeN

cd ../TURBO/
cp ../VASP/coord .

for i in {1..5}
do
y=$NeN
y=`echo "($y -6 + 2 * $i)" | bc `
a=$(((x+y)/2))
b=$(((x-y)/2))

###This part is just making the directories for that spin state and copying coord, jobscript and turbomole script into that directory  ###
###and running that. So you'll have to have the coord, jobscript and turbomolescript to youre directory where you run this script.    ###

mkdir Spin-$y

cd Spin-$y
cp ../coord .
cp $copy_dir/* .
sed -i "s/1-first/1-$a/g" turbomolejob
sed -i "s/1-second/1-$b/g" turbomolejob
./turbomolejob
cd ../
done

cd ../VASP/

#Everything is done

