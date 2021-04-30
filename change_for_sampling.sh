#!/bin/bash -x
sed -i "s/add_to_config 1 0 geometry.xyz 0 1/checkpoint pore.out.chk/g" pore.inp
sed -i "s/prop_freq 50000/prop_freq 5000/g" pore.inp
sed -i "s/coord_freq 50000/coord_freq 5000/g" pore.inp
sed -i "s/run 1000000/run 11000000/g" pore.inp
sed -i "s/#SBATCH -t 48:00:00/#SBATCH -t 240:00:00/g" job*
