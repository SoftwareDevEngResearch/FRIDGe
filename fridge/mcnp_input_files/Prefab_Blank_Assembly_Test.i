Input deck created by FRIDGe
c *****************************Blank_Assembly_Test*****************************
c ************************Cell Cards for Assembly: 01A01*********************** 
100 100 0.06747 -100 u=100 imp:n=1 $Assembly: Blank Region
101 101 0.02428 -101 u=100 imp:n=1 $Assembly: Lower Coolant
102 102 0.02428 -102 u=100 imp:n=1 $Assembly: Upper Coolant
103 0 -103 fill=100 imp:n=1 $Assembly
104 0 103 imp:n=0 $Everything Else

c ********************Surface Cards for Fuel Assembly: 01A01*******************
100 RHP 0.0 0.0 -60.0 0 0 240 0 5.80529 0 $Assembly: Blank Region
101 RHP 0.0 0.0 -100.1 0 0 40.1 0 5.80529 0 $Assembly: Lower Coolant
102 RHP 0.0 0.0 180.0 0 0 40.0 0 5.80529 0 $Assembly: Upper Coolant
103 RHP 0.0 0.0 -100.0 0 0 320.0 0 5.805 0 $Assembly: Full Assembly Surface

c **********************************Data Cards*********************************
c ******************************k-code Information*****************************
kcode 10000000000 1.0 300 2300
ksrc 0 -12 40 
PRDMP 100 10 100 1 
kopts BLOCKSIZE=10 KINETICS=YES PRECURSOR=Yes 
DBCN 68J 50000 
c *****************************Material Information****************************
c Material: ['LiquidNa', 'HT9']; Density: 0.06747 atoms/bn*cm 
m100 11023.39c 1.0797E-1 6000.39c 8.1917E-3 14028.39c 6.4614E-3
     14029.39c 3.2825E-4 14030.39c 2.1664E-4 15031.39c 4.7647E-4
     16032.39c 2.9148E-4 16033.39c 2.3014E-6 16034.39c 1.3041E-5
     16036.39c 3.0686E-8 23050.39c 7.2427E-6 23051.39c 2.8898E-3
     24050.39c 4.7275E-3 24052.39c 9.1165E-2 24053.39c 1.0337E-2
     24054.39c 2.5732E-3 25055.39c 5.3727E-3 26054.39c 4.3740E-2
     26056.39c 6.8662E-1 26057.39c 1.5857E-2 26058.39c 2.1103E-3
     28058.39c 2.8530E-3 28060.39c 1.0989E-3 28061.39c 4.7775E-5
     28062.39c 1.5233E-4 28064.39c 3.8765E-5 42092.39c 7.4488E-4
     42094.39c 4.6908E-4 42095.39c 8.1204E-4 42096.39c 8.5459E-4
     42097.39c 4.9215E-4 42098.39c 1.2504E-3 42100.39c 5.0342E-4
     74180.39c 1.6055E-6 74182.39c 3.5456E-4 74183.39c 1.9146E-4
     74184.39c 4.0995E-4 74186.39c 3.8038E-4
c Material: Liquid Sodium; Density: 0.02428 atoms/bn*cm 
m101 11023.39c 1.0000E+0
c Material: Liquid Sodium; Density: 0.02428 atoms/bn*cm 
m102 11023.39c 1.0000E+0
c Material: Liquid Sodium; Density: 0.02428 atoms/bn*cm 
m103 11023.39c 1.0000E+0