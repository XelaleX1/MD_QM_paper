units real
dimension 3
boundary p p p
atom_style full
newton off

read_data     topology_start.data

pair_style lj/cut/coul/long 8.0
pair_modify shift yes mix geometric

pair_coeff  1   1       0.066      3.50   #C chain
pair_coeff  2*3 2*3     0.076      3.55   #T link, T CH
pair_coeff  4   4       0.25       3.55   #S gT
pair_coeff  5   5       0.03       2.50   #H chain
pair_coeff  6   6       0.03       2.50   #H backbone
pair_coeff  7   7       0.21       2.96   #O
pair_coeff  8   8       0.25       3.55   #S T
pair_coeff  9   9       0.21       2.96   #O backbone
pair_coeff  10  10      0.00       0.0     #HW
pair_coeff  11  11      0.1553     3.166   #OW
pair_coeff  12  12      0.148      3.770   #Cl

bond_style harmonic

bond_coeff  1  310.0    1.526     #C1-C1
bond_coeff  2  331.0    1.090     #C1-H5
bond_coeff  3  320.0    1.410     #C1-O7 glycolated side chain
bond_coeff  4  520.0    1.444387  #C2-C2
bond_coeff  5  388.0    1.389158  #C2-C3
bond_coeff  6  222.0    1.762646  #C2-S4
bond_coeff  7  340.0    1.079834  #C2-H5 ending
bond_coeff  8  222.0    1.762646  #C2-S8
bond_coeff  9  520.0    1.42  #C3-C3
bond_coeff 10  340.0    1.079834  #C3-H6
bond_coeff 11  320.0    1.360000  #C3-O7 gT to side chains
bond_coeff 12  450.0    1.0000    #OW-HW

angle_style harmonic

angle_coeff  1 35.0    109.50   #C1-C1-H5
angle_coeff  2 50.0    109.50   #C1-C1-O7 glycolated side chain all opls
angle_coeff  3 60.0    109.50   #C1-O7-C1 glycolated side chain all opls
angle_coeff  4 80.0    119.75   #C3-O7-C1 constant from OPLS- value from opt.geom
angle_coeff  5 85.0    128.53   #C2-C2-C3
angle_coeff  6 50.0    120.76   #C2-C2-S4 
angle_coeff  7 50.0    120.76   #C2-C2-S8 
angle_coeff  8 85.0    114.00   #C2-C3-C3
angle_coeff  9 35.0    123.59   #C2-C3-H6 
angle_coeff 10 80.0    129.16   #C2-C3-O7 constant from OPLS- value from opt.geom
angle_coeff 11 62.0     91.89   #C2-S4-C2 
angle_coeff 12 62.0     91.89   #C2-S8-C2 
angle_coeff 13 50.0    109.76   #C3-C2-S4 
angle_coeff 14 35.0    123.59   #C3-C2-H5 
angle_coeff 15 50.0    109.76   #C3-C2-S8 
angle_coeff 16 35.0    122.90   #C3-C3-H6 
angle_coeff 17 80.0    117.06   #C3-C3-O7 constant from OPLS- value from opt.geom
angle_coeff 18 35.0    108.41   #S4-C2-H5
angle_coeff 19 35.0    109.15   #H5-C1-H5 
angle_coeff 20 35.0    109.50   #O7-C1-H5  glycolated side chain all opls
angle_coeff 21 35.0    108.41   #S8-C2-H5
angle_coeff 22 35.0    109.47   #HW-OW-HW

dihedral_style hybrid opls table spline 1000

dihedral_coeff 1  opls 0.65 -0.25 0.67 0.0         # 1   1   7   1 OPLS x
dihedral_coeff 2  opls -1.22 -0.126 0.422 0.0      # 3   7   1   1 OPLS x
dihedral_coeff 3  opls 0.65 -0.25 0.67 0.0         # 1   7   1   1 same as 1 x
dihedral_coeff 4  opls 0.0 0.0 0.76 0.0            # 1   7   1   5 OPLS x
dihedral_coeff 5  opls 0.0 3.0 0.0 0.0             # 2   3   7   1 OPLS x
dihedral_coeff 6  opls 0.0 3.0 0.0 0.0             # 3   3   7   1 OPLS x
dihedral_coeff 7  opls 0.0 30 0.0 0.0              # 2   2   3   3
dihedral_coeff 8  opls 0.0 30 0.0 0.0              # 6   3   2   2
dihedral_coeff 9  opls 0.0 30 0.0 0.0              # 2   2   3   7
dihedral_coeff 10 opls 0.0 30 0.0 0.0              # 2   2   4   2
dihedral_coeff 11 opls 0.0 30 0.0 0.0              # 2   2   8   2
dihedral_coeff 12 opls 0.0 30 0.0 0.0              # 2   3   3   2
dihedral_coeff 13 opls 0.0 30 0.0 0.0              # 2   3   3   6
dihedral_coeff 14 opls 0.0 30 0.0 0.0              # 2   3   3   7
dihedral_coeff 15 opls 0.0 30 0.0 0.0              # 3   2   4   2
dihedral_coeff 16 opls 0.0 30.0 0.0 0.0             # 5   2   4   2 to the ending H
dihedral_coeff 17 opls 0.0 30 0.0 0.0              # 3   2   8   2
dihedral_coeff 18 opls 0.0 30.0 0.0 0.0             # 5   2   8   2 to the ending H
dihedral_coeff 19 opls 0.0 0.0 0.0 0.0             # 3   2   2   3 !!
dihedral_coeff 20 opls 0.0 0.0 0.0 0.0             # 3   2   2   4 !!
dihedral_coeff 21 opls 0.0 0.0 0.0 0.0             # 3   2   2   8 !!
dihedral_coeff 22 opls 0.0 30 0.0 0.0              # 3   3   2   4
dihedral_coeff 23 opls 0.0 30.0 0.0 0.0             # 3   3   2   5 to the ending H
dihedral_coeff 24 opls 0.0 30 0.0 0.0              # 3   3   2   8
dihedral_coeff 25 opls 0.0 0.0 0.76 0.0            # 3   7   1   5 OPLS x
dihedral_coeff 26 table Torsional_potential.pot DIH_gTgT       # 4   2   2   4 gT-gT dihedral
dihedral_coeff 27 table Torsional_potential.pot DIH_TgT        # 4   2   2   8 T-gT dihedral
dihedral_coeff 28 opls 0.0 30 0.0 0.0              # 6   3   2   4
dihedral_coeff 29 opls 0.0 30 0.0 0.0              # 7   3   2   4
dihedral_coeff 30 opls 0.0 0.0 0.318 0.0           # 5   1   1   5 OPLS x
dihedral_coeff 31 opls 0.0 0.0 0.0 0.0             # 5   1   1   7 OPLS x
dihedral_coeff 32 opls 0.0 30.0 0.0 0.0             # 6   3   2   5 to the ending H
dihedral_coeff 33 opls 0.0 0.0 0.3 0.0             # 6   3   2   8 
dihedral_coeff 34 opls 0.0 0.0 0.318 0.0           # 6   3   3   6 !
dihedral_coeff 35 opls -4.214 -2.114 0.969 0.0     # 7   3   3   6 OPLS x
dihedral_coeff 36 opls -6.18 0.0 0.0 0.0           # 7   1   1   7 OPLS x

################# ANNEAL #######################
kspace_style  ewald 1.0e-4
special_bonds lj/coul 0.0 0.0 0.5
kspace_modify diff ad

timestep       2
thermo         2000
thermo_style   custom step temp etotal ke pe press vol density lx ly lz

fix            2 all npt temp 300.0 300.0 200.0 tchain 1 iso 1.0 1.0 2000.0
fix            xh all rattle 1e-6 50000 0 b 2 7 10 12

fix            velfix all momentum 10000 linear 1 1 1 angular

restart        1000 restart.RT

dump           RTlmp all atom 250 trajectory.lammpstrj
dump_modify    RTlmp image yes
dump_modify    RTlmp sort id 

dump           RT2 all dcd 250 trajectory.dcd
dump_modify    RT2 sort id
dump_modify    RT2 unwrap yes


run            2500

write_data     topology_new.data nocoeff


