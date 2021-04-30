#!/bin/bash -x

sed -i '/^[[:space:]]*$/,$ d' CONTCAR*
hnum=`sed -n -e 7p CONTCAR* | awk -F " " '{print $4}'`
for i in `seq 1 $hnum`; do echo "   H$i         1.0     "; done >> Headcoord
for i in `seq 1 $hnum`; do echo "     Biso  1.000000 H"; done >> Tailcoord
tcoord=$(($hnum+71)); 
tail -$tcoord CONTCAR* | awk -F " " '{print $1 " "$2 " " $3}' | awk '{printf("%.6f   %6f   %.6f\n", $1,$2,$3)}' >> Fraccoord
paste Headcoord Fraccoord Tailcoord > TempCIF
cat Mainheader TempCIF > CONTCAR.cif
rm Headcoord Fraccoord Tailcoord TempCIF Mainheader

