#!/bin/bash -x

###################################################################################################
#                                                                                                                                                                                               
#                 Purpose : Preparing DISPLACECAR and INCAR for dynamical matrix calculation                                                                                                                               #                  Author : Mohammad Shamsus Saleheen, Department of Chemical Engineering,USC
#                    Date : 12-15-2013                                                                                                                                        
#            Modification :                                                                                                                                       
#  Reasons of Modification:                                                                                                                                        
#                                                                                                                                                                     
####################################################################################################


mkdir vib_0
cp {INCAR,KPOINTS,POTCAR,CONTCAR,job*,vdw*} vib_0/
cd vib_0/
mv CONTCAR POSCAR
sed -i '/^[[:space:]]*$/,$d' POSCAR
sed -i 's/EDIFFG.*/EDIFFG  = 1.0E-10/g' INCAR
sed -i 's/IBRION.*/IBRION  = 3/g' INCAR
sed -i '/ICHAIN.*/d' INCAR
sed -i '/IBRION.*/i ICHAIN  = 1' INCAR	
sed -i '/POTIM.*/d' INCAR
sed -i '/^SIGMA.*/i POTIM   = 0.0' INCAR
sed -i '/IOPT.*/d' INCAR
num=$(wc -l POSCAR | awk -F " " '{print $1}')
   if [ $num -gt 73 ]; then	   
	sed -i '42,73 s/T/F/g' POSCAR
	atm=$(($num - 73))
	natm=$(($atm+64))
	touch DISPLACECAR
	for i in `seq 1 $natm`; do
		echo " " >> DISPLACECAR
	done
	sed -i "1,64 s/ /0.000   0.000   0.000/g" DISPLACECAR
	sed -i "65,$natm s/ /0.005   0.005   0.005/g" DISPLACECAR
	sed -i '/^[[:space:]]*$/,$d' DISPLACECAR
   else
	atm=$(($num - 9))
        sed -i '/ISYM.*/d' INCAR
        sed -i '/^ISPIN.*/i ISYM    = 0' INCAR	
	touch DISPLACECAR
	for i in `seq 1 $atm`; do
		echo " " >> DISPLACECAR
	done
	sed -i "1,$atm s/ /0.005   0.005   0.005/g" DISPLACECAR
   fi
new=$((3*$atm + 1))
sed -i "s/NSW.*/NSW     = $new/g" INCAR
cd ../
