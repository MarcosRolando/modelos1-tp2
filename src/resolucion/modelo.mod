set BATALLONES;
set REGIONES;

param C{i in REGIONES};
param CF{i in BATALLONES};
param AL{i in BATALLONES};
param CFr{j in REGIONES};
param ALr{j in REGIONES};

var X{i in BATALLONES, j in REGIONES}, binary;
var U{j in REGIONES}, binary;

maximize Z: sum{j in REGIONES}(C[j] * U[j]);


# Restricciones por experiencia
s.t. ExpA: X["A", "NEA"] + X["A", "CENTRO"] + X["A", "PATAGONIA"] = 0;
s.t. ExpB: X["B", "NOA"] + X["B", "CENTRO"] + X["B", "PAMPEANA"] + X["B", "PATAGONIA"] = 0;
s.t. ExpC: X["C", "NOA"] + X["C", "CENTRO"] + X["C", "CENTRO"] + X["C", "PATAGONIA"] = 0;
s.t. ExpD: X["D", "NEA"] + X["D", "CENTRO"] = 0;
s.t. ExpE: X["E", "NORTE"] + X["E", "NEA"] + X["E", "PATAGONIA"] = 0;
s.t. ExpF: X["F", "NORTE"] + X["F", "CENTRO"] + X["F", "PAMPEANA"] = 0;

# Restricciones para batallon en unico lugar
s.t. Max{i in BATALLONES}: sum{j in REGIONES}(X[i, j]) <= 1;

# Restricciones A y D separados
s.t. AyD{j in REGIONES}: X["A", j] + X["D", j] <= 1;

# Restricciones Patagonia
s.t. Patagonia: sum{i in BATALLONES}(X[i, "PATAGONIA"]) <= 3;

# Restricciones cantidad batallones disponibles
s.t. CFDisponibles: sum{i in BATALLONES, j in REGIONES}(X[i, j] * CF[i]) <= 8;
s.t. ALDisponibles: sum{i in BATALLONES, j in REGIONES}(X[i, j] * AL[i]) <= 8;

# Restricciones batallones minimos
s.t. MinCF{j in REGIONES}: CFr[j] * U[j] <= sum{i in BATALLONES}(CF[i] * X[i, j]);
s.t. MinAL{j in REGIONES}: ALr[j] * U[j] <= sum{i in BATALLONES}(AL[i] * X[i, j]);

# Restricciones para linkear U con X
s.t. UconX1{j in REGIONES}: sum{i in BATALLONES}(X[i, j]) / 6 <= U[j];
s.t. UconX2{j in REGIONES}: U[j] <= sum{i in BATALLONES}(X[i, j]);

data;

set BATALLONES := A, B, C, D, E, F;
set REGIONES := NOA NORTE NEA CENTRO PAMPEANA PATAGONIA;

param C := NOA		 5
           NORTE	 2
           NEA		 9
           CENTRO	 4
           PAMPEANA	 2
           PATAGONIA	10;

param CF := A  2
            B  1
            C  2
            D  1
            E  2
            F  1;

param AL := A  1
            B  2
            C  1
            D  2
            E  1
            F  2;

param CFr := NOA	2
             NORTE	1
             NEA	1
             CENTRO	1
             PAMPEANA	2
             PATAGONIA	2;

param ALr := NOA	1
             NORTE	1
             NEA	1
             CENTRO	2
             PAMPEANA	1
             PATAGONIA	2;

end;
