#!/bin/bash -x

mkdir Tight
cp {coord,turbo*,job*} Tight/
cd Tight/;
sed -i "s/b all def2-SVP/b all TZVP/g" turbo*
sed -i "s/b \"pt\" def2-SVP/b \"pt\" def-TZVP/g" turbo*
sed -i "s/m3/m4/g" turbo*
sed -i "s/#//g" turbo*
./turbo*
cd ..
