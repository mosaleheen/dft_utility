#!/bin/bash -x

###################################################################################################
#                                                                                                                                                                                               
#                 Purpose: To make a POSCAR file from .cell file format without making any changes 
#                          to the .cell file                                                                                                                                                            
#                  Author: Mohammad Shamsus Saleheen, Department of Chemical Engineering,USC                                          
#                    Date: 03.05.15                                                                                                                                        
#            Modification:                                                                                                                                       
#  Reasons of Modification:                                                                                                                                        
#                                                                                                                                                                          
####################################################################################################

pot_base="/home/saleheen/potcar_pbe_5.3.5"  # Change your POTCAR directory here


dos2unix *.cell > /dev/null 2> /dev/null

sed -i '5,7d' *.cell
sed -i '1d' *.cell

sed -i '1 i\    1.00000000000000' *.cell
sed -i '1 i\ System' *.cell
sed -i '/%ENDBLOCK POSITIONS_FRAC/,$d' *.cell

count_Ru=$(grep -c Ru *.cell)
count_Pt=$(grep -c Pt *.cell)
nc=$(grep -c C *.cell)
nh=$(grep -c H *.cell)
no=$(grep -c O *.cell)

z=0
head -5 *.cell > POSCAR

if [ $count_Ru -gt $z ]
then
echo "    Ru" >> POSCAR
cat $pot_base/Ru/POTCAR > POTCAR
echo "    $count_Ru" >> POSCAR
elif [ $count_Pt -gt $z ]
then
echo "    Pt" >> POSCAR
cat $pot_base/Pt/POTCAR > POTCAR
echo "    $count_Pt" >> POSCAR
else
echo "gas species"
fi

if [ $nc -gt $z ]
then
echo "    C" >> POSCAR
echo "    $nc" >> POSCAR
#sed -i "6 s/$/    C   /g" POSCAR
#sed -i "7 s/$/    $nc/g" POSCAR
cat $pot_base/C/POTCAR >> POTCAR
fi

if [ $no -gt $z ]
then
sed -i "6 s/$/   O   /g" POSCAR
sed -i "7 s/$/    $no/g" POSCAR
cat $pot_base/O/POTCAR >> POTCAR
fi


if [ $nh -gt $z ]
then
sed -i "6 s/$/    H   /g" POSCAR
sed -i "7 s/$/    $nh/g" POSCAR
cat $pot_base/H/POTCAR >> POTCAR
fi



echo -e "Selective dynamics \nDirect" >> POSCAR

if [ $count_Ru -gt $z ]
then
grep " Ru " *.cell | sed -e 's/Ru  //' -e 's/   /  /g' -e 's/$/   T   T   T/' > to_sort
sort -k3 to_sort > sorted
sed -i '1,32 s/T/F/g' sorted
cat sorted >> POSCAR
elif [ $count_Pt -gt $z ]
then
grep " Pt " *.cell | sed -e 's/Pt  //' -e 's/   /  /g' -e 's/$/   T   T   T/' > to_sort
sort -k3 to_sort > sorted                                                              
sed -i '1,32 s/T/F/g' sorted                                                           
cat sorted >> POSCAR                                                                   
else
echo "gas species"
fi

grep " C " *.cell | sed -e 's/ C  //' -e 's/   /  /g' -e 's/$/   T   T   T/' >> POSCAR
grep " O " *.cell | sed -e 's/ O  //' -e 's/   /  /g' -e 's/$/   T   T   T/' >> POSCAR
grep " H " *.cell | sed -e 's/ H  //' -e 's/   /  /g' -e 's/$/   T   T   T/' >> POSCAR

rm to_sort
rm sorted
rm *.cell
