#!/bin/bash -x

###################################################################################################
#                                                                                                                                                                                               
#                 Purpose : To make a POSCAR file from .cell file format (using existing catalyst base,Ru or Pt) 
#                  Author : Mohammad Shamsus Saleheen, Department of Chemical Engineering,USC
#                    Date : 12-13-2013                                                                                                                                        
#            Modification :                                                                                                                                       
#  Reasons of Modification:                                                                                                                                        
#                                                                                                                                                                     
####################################################################################################



catalyst_base_poscar="/work/saleheen/02_guaiacol_hdo/CatalystBases-BEEF"
potcar_base="/work/saleheen/02_guaiacol_hdo/POTCARSource"

dos2unix *.cell > /dev/null 2> /dev/null


sed -i '1,7d' *.cell
sed -i '/%ENDBLOCK POSITIONS_FRAC/,$d' *.cell

z=0
count_Ru=$(grep -c Ru *.cell)
count_Pt=$(grep -c Pt *.cell)
nc=$(grep -c C *.cell)
no=$(grep -c O *.cell)
nh=$(grep -c H *.cell)


if [ $count_Ru -gt $z ] 
then
	cp $catalyst_base_poscar/CONTCAR-Ru POSCAR
	cp $potcar_base/POTCAR-Ru POTCAR
elif [ $count_Pt -gt $z ]
then
	cp $catalyst_base_poscar/CONTCAR-Pt POSCAR
	cp $potcar_base/POTCAR-Pt POTCAR
else
	echo "ERROR: You're working with a different metal than Ru or Pt, aborting script"
exit 1
fi

sed -i '/^[[:space:]]*$/,$d' POSCAR 

if [ $nc -gt $z ]
then
	sed -i "6 s/$/    C /g" POSCAR
	sed -i "7 s/$/    $nc/g" POSCAR
	cat $potcar_base/POTCAR-C >> POTCAR
fi

if [ $no -gt $z ]
then
	sed -i "6 s/$/   O /g" POSCAR
	sed -i "7 s/$/    $no/g" POSCAR
	cat $potcar_base/POTCAR-O >> POTCAR
fi


if [ $nh -gt $z ]
then
	sed -i "6 s/$/   H   /g" POSCAR
	sed -i "7 s/$/    $nh/g" POSCAR
	cat $potcar_base/POTCAR-H >> POTCAR
fi

grep " C " *.cell | sed -e 's/ C  //' -e 's/   /  /g' -e 's/$/   T   T   T/' >> POSCAR
grep " O " *.cell | sed -e 's/ O  //' -e 's/   /  /g' -e 's/$/   T   T   T/' >> POSCAR
grep " H " *.cell | sed -e 's/ H  //' -e 's/   /  /g' -e 's/$/   T   T   T/' >> POSCAR

rm *.cell

