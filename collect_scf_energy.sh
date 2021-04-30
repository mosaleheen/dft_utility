#!/bin/bash -x

# Purepose: Collects scf energies and frequencies when frequency calculations are in a
# 	    subdirectory named VIB-0. Optimization and DIMER have separate strategy to 
# 	    collect data since in TS calculations we need to ignore the bond breaking mode.
# 	    The commented out "END" block is for block commenting 

### Optimization ###
# Assign frequency directory name here. The script has to be applied where you have the vasp calculations
# and assumes you have the frequency calculation directory within it.

frequency_dir='vib_0'
calc=`echo $1`

if [[ $calc == "opt" ]]; then
    if [ -d $frequency_dir/ ]; then
#	If OUTCAR file available
	SCF=$(grep entropy= OUTCAR | tail -1 | rev | awk -F " " '{print $1}' | rev)

# 	If OUTCAR file in not available and only OSZICAR file available
#	energy=`grep E0 OSZICAR | tail -1 | awk -F "=" '{print $3}' | awk -F " " '{print $1}'`	
#	Converting OSZICAR Sci notation to decimal number	
#	SCF=`printf "%.13f" $energy`

	echo $SCF >> ../SCF-Data
	if [ -f $frequency_dir/freq.dat ]; then 
		awk '{print $1}' $frequency_dir/freq.dat >> ../SCF-Data
	else 
		echo 0 >> ../SCF-Data
	fi
    fi
elif [[ $calc == "dimer" ]]; then
    if [ -d $frequency_dir/ ]; then
#	If OUTCAR file available
	SCF=$(grep entropy= OUTCAR | tail -1 | rev | awk -F " " '{print $1}' | rev)

#	If OSZICAR file available
#	energy=`grep E0 OSZICAR | tail -1 | awk -F "=" '{print $3}' | awk -F " " '{print $1}'`
#       Converting OSZICAR Sci notation to decimal number  
#	SCF=`printf "%.13f" $energy` 

	echo $SCF >> ../SCF-Data
        if [ -f $frequency_dir/freq.dat ]; then 
        	cp $frequency_dir/freq.dat .
        	line=$(wc -l freq.dat | awk '{print $1}')
        	minusim=$(($line - 1))
        	tail -$minusim freq.dat | awk '{print $1}' >> ../SCF-Data
        	rm freq.dat
        else 
        	echo 0 >> ../SCF-Data
        fi 
    fi
else
    echo "Please specify if it's a minima or a saddle point calculation as an argument, i.e., opt or dimer."
fi
