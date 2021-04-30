#!/bin/bash -x
mkdir COSMO-D
cd COSMO-D/
cp ../{alpha,beta,auxbasis,basis,control,coord,job*} .
cosmoprep << EOF












r all o
r "pt" 2.2230
*



EOF
sed -i '2d' job*
sed -i '2i #SBATCH --job-name=COSMO-D' job*
cp control control.cosmo
cd ../
