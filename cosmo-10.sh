#!/bin/bash -x
mkdir COSMO-10
cd COSMO-10/
cp ../{alpha,beta,auxbasis,basis,control,coord,job*} .
cosmoprep << EOF












r all o
r "pt" 2.0007
*



EOF
sed -i '2d' job*
sed -i '2i #SBATCH --job-name=COSMO-10' job*
cp control control.cosmo
cd ../
