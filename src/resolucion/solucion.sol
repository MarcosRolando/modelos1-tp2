Problem:    modelo
Rows:       46
Columns:    42 (42 integer, 42 binary)
Non-zeros:  318
Status:     INTEGER OPTIMAL
Objective:  Z = 26 (MAXimum)

   No.   Row name        Activity     Lower bound   Upper bound
------ ------------    ------------- ------------- -------------
     1 Z                          26                             
     2 ExpA                        0            -0             = 
     3 ExpB                        0            -0             = 
     4 ExpC                        0            -0             = 
     5 ExpD                        0            -0             = 
     6 ExpE                        0            -0             = 
     7 ExpF                        0            -0             = 
     8 Max[A]                      1                           1 
     9 Max[B]                      0                           1 
    10 Max[C]                      1                           1 
    11 Max[D]                      1                           1 
    12 Max[E]                      1                           1 
    13 Max[F]                      1                           1 
    14 AyD[NOA]                    1                           1 
    15 AyD[NORTE]                  0                           1 
    16 AyD[NEA]                    0                           1 
    17 AyD[CENTRO]                 0                           1 
    18 AyD[PAMPEANA]               0                           1 
    19 AyD[PATAGONIA]              1                           1 
    20 Patagonia                   2                           3 
    21 CFDisponibles               8                           8 
    22 ALDisponibles               7                           8 
    23 MinCF[NOA]                  0                          -0 
    24 MinCF[NORTE]                0                          -0 
    25 MinCF[NEA]                 -1                          -0 
    26 MinCF[CENTRO]               0                          -0 
    27 MinCF[PAMPEANA]             0                          -0 
    28 MinCF[PATAGONIA]            0                          -0 
    29 MinAL[NOA]                  0                          -0 
    30 MinAL[NORTE]                0                          -0 
    31 MinAL[NEA]                  0                          -0 
    32 MinAL[CENTRO]               0                          -0 
    33 MinAL[PAMPEANA]             0                          -0 
    34 MinAL[PATAGONIA]           -2                          -0 
    35 UconX1[NOA]         -0.833333                          -0 
    36 UconX1[NORTE]               0                          -0 
    37 UconX1[NEA]         -0.833333                          -0 
    38 UconX1[CENTRO]              0                          -0 
    39 UconX1[PAMPEANA]    -0.833333                          -0 
    40 UconX1[PATAGONIA]   -0.666667                          -0 
    41 UconX2[NOA]                 0                          -0 
    42 UconX2[NORTE]               0                          -0 
    43 UconX2[NEA]                 0                          -0 
    44 UconX2[CENTRO]              0                          -0 
    45 UconX2[PAMPEANA]            0                          -0 
    46 UconX2[PATAGONIA]          -1                          -0 

   No. Column name         Activity     Lower bound   Upper bound
------ --------------    ------------- ------------- -------------
     1 X[A,PATAGONIA] *              0             0             1 
     2 X[A,CENTRO]    *              0             0             1 
     3 X[A,NEA]       *              0             0             1 
     4 X[B,PATAGONIA] *              0             0             1 
     5 X[B,PAMPEANA]  *              0             0             1 
     6 X[B,CENTRO]    *              0             0             1 
     7 X[B,NOA]       *              0             0             1 
     8 X[C,PATAGONIA] *              0             0             1 
     9 X[C,CENTRO]    *              0             0             1 
    10 X[C,NOA]       *              0             0             1 
    11 X[D,CENTRO]    *              0             0             1 
    12 X[D,NEA]       *              0             0             1 
    13 X[E,PATAGONIA] *              0             0             1 
    14 X[E,NEA]       *              0             0             1 
    15 X[E,NORTE]     *              0             0             1 
    16 X[F,PAMPEANA]  *              0             0             1 
    17 X[F,CENTRO]    *              0             0             1 
    18 X[F,NORTE]     *              0             0             1 
    19 X[A,NOA]       *              1             0             1 
    20 X[A,NORTE]     *              0             0             1 
    21 X[A,PAMPEANA]  *              0             0             1 
    22 X[B,NORTE]     *              0             0             1 
    23 X[B,NEA]       *              0             0             1 
    24 X[C,NORTE]     *              0             0             1 
    25 X[C,NEA]       *              1             0             1 
    26 X[C,PAMPEANA]  *              0             0             1 
    27 X[D,NOA]       *              0             0             1 
    28 X[D,NORTE]     *              0             0             1 
    29 X[D,PAMPEANA]  *              0             0             1 
    30 X[D,PATAGONIA] *              1             0             1 
    31 X[E,NOA]       *              0             0             1 
    32 X[E,CENTRO]    *              0             0             1 
    33 X[E,PAMPEANA]  *              1             0             1 
    34 X[F,NOA]       *              0             0             1 
    35 X[F,NEA]       *              0             0             1 
    36 X[F,PATAGONIA] *              1             0             1 
    37 U[NOA]         *              1             0             1 
    38 U[NORTE]       *              0             0             1 
    39 U[NEA]         *              1             0             1 
    40 U[CENTRO]      *              0             0             1 
    41 U[PAMPEANA]    *              1             0             1 
    42 U[PATAGONIA]   *              1             0             1 

Integer feasibility conditions:

KKT.PE: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
