#!/bin/bash -x

###################################################################################################
#                                                                                                 # 
#                 Purpose : Create a POSCAR file from a .cell file (as it is)                     #
#                  Author : Mohammad Shamsus Saleheen, Department of Chemical Engineering,USC	    #
#                    Date : 12-13-2013                                                            #                                                                            
#            Modification :                                                                       #                                                                
# Reasons of Modification :                                                                       #                                                                 
#                   Usage :./General-Poscar.sh arg1 arg2 ...					                            #                         
#                           Provide the arguments in the same order you want your POSCAR file to  #
#		                        be in. All you need are a .cell file from material studio and the     #
#                           path to POTCAR files.                                         		    #
###################################################################################################


dos2unix *.cell > /dev/null 2> /dev/null


sed -i '/%BLOCK LATTICE_CART/d' *.cell
sed -i '/%ENDBLOCK LATTICE_CART/d' *.cell
sed -i '/%BLOCK POSITIONS_FRAC/d' *.cell
sed -i '/%ENDBLOCK POSITIONS_FRAC/,$d' *.cell
sed -i '/^$/d' *.cell

echo System >> POSCAR
echo 1.00000000000000 >> POSCAR
head -3 *.cell >> POSCAR
sed -i '5G' POSCAR
sed -i '6G' POSCAR
sed -i '7 a Selective dynamics' POSCAR
sed -i '8 a Direct' POSCAR

for i in $@
do
species_i=`echo $i`
n_species=$(grep -c $species_i *.cell)
zero=0
if [ $n_species -gt $zero ]
then
sed -i "6 s/$/   $species_i/g" POSCAR
sed -i "7 s/$/   $n_species/g" POSCAR
grep " $species_i " *.cell | sed -e "s/ $species_i  //" -e "s/   /  /g" -e "s/$/   T   T   T/" | sort -k3 >> POSCAR
cat /home/sale666/POTCAR-PBE-5.3.5/$species_i/POTCAR >> POTCAR             # Change you POTCAR Directory in here
else
echo "$species_i do not exist"
fi
done
