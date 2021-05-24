#!/bin/bash -x

#preparing fre.dat file
cat freq.dat | awk -F " " '{print $1}' | tail -n +7 > temp
mv temp freq.dat

#preparing CONTCAR file
sed -i '/^[[:space:]]*$/,$d' CONTCAR
sed -i '10,$ s/T//g' CONTCAR
sed -i '8d' CONTCAR
obox=`head -3 CONTCAR | tail -1 | awk -F " " '{print $1}'`
nbox=`head -2 CONTCAR | tail -1 | awk -F " " '{print $1}'`
sed -i "3,5 s/$obox/$nbox/g" CONTCAR 
sed -i "2 s/$nbox/$obox/g" CONTCAR 
