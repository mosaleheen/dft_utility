#!/usr/bin/env python
# -*-coding: utf-8 -*-

#vasp_to_xyz.py
#Mohammad Saleheen
#CREATED: 11-19-2020
import sys

if len(sys.argv) != 2:
    print('Number of arguments provided: ', len(sys.argv))
    print('''
        Please provide the name of the VASP coordinate file..
        ''')
    exit()

ifile = sys.argv[1]
ofile = 'output.xyz'

frand = open(ifile, 'r')
fwand = open(ofile, 'w')
head = frand.readline()                                                 #dummy header line
frand.readline()                                                        #dummy
xbox = float(frand.readline().split()[0])
ybox = float(frand.readline().split()[1])
zbox = float(frand.readline().split()[2])

atoms = list(filter(None, frand.readline().strip().split(' ')))
atom_count = [int(x) for x in list(filter(None, frand.readline().strip().split(' ')))]
total_atoms = sum(atom_count)

frand.readline()                                                        #dummy
frand.readline()                                                        #dummy

fwand.write('{}\n'.format(str(total_atoms)))
fwand.write('{}'.format(head))

for i in range(len(atoms)):
    for j in range(atom_count[i]):
        xc, yc, zc, relax_x, relax_y, relax_z = frand.readline().split()
        xc = float(xc) * xbox
        yc = float(yc) * ybox
        zc = float(zc) * zbox
        fwand.write('{}\t{:0.8f}\t{:0.8f}\t{:0.8f}\n'.format(atoms[i], xc, yc, zc))
frand.close()
fwand.close()
