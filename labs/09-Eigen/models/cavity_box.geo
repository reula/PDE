//+
SetFactory("OpenCASCADE");

Lx = DefineNumber[ 1, Name "Parameters/Lx" ]; // Tamaño en x del cuadrado grande
Ly = DefineNumber[ 1, Name "Parameters/Ly" ]; // Tamaño en y del cuadrado grande
lx = DefineNumber[ 0.5, Name "Parameters/lx" ]; // Tamaño en x del cuadrado pequeño
ly = DefineNumber[ 0.5, Name "Parameters/ly" ]; // Tamaño en y del cuadrado pequeño
th_ext = DefineNumber[ 0.1, Name "Parameters/th_ext" ]; // finesa grilla borde exterior
th_int = DefineNumber[ 0.05, Name "Parameters/th_int" ];//finesa grilla  borde interior
d = DefineNumber[ 0.1, Name "Parameters/d" ];// tamaño separacion apertura interna
e = DefineNumber[ 0.1, Name "Parameters/e" ];// grosor extripado

Point(1) = {0, 0, 0, th_ext};
Point(2) = {Lx, 0, 0, th_ext};
Point(3) = {Lx, Ly, 0, th_ext};
Point(4) = {0, Ly, 0, th_ext};

Point(5) = {(Lx-lx)/2, (Ly-ly)/2, 0, th_int};
Point(6) = {(Lx+lx)/2, (Ly-ly)/2, 0, th_int};
Point(7) = {(Lx+lx)/2, (Ly+ly)/2,0, th_int};
Point(8) = {(Lx-lx)/2, (Ly+ly)/2, 0, th_int};

Point(9) = {(Lx-d)/2, (Ly-ly)/2,0, th_int};
Point(10) = {(Lx+d)/2, (Ly-ly)/2, 0, th_int};

Point(11) = {(Lx-d)/2, (Ly-ly)/2+e, 0,th_int};
Point(12) = {(Lx+d)/2, (Ly-ly)/2 + e, 0, th_int};

Point(13) = {(Lx-lx)/2+e, (Ly-ly)/2+e,0, th_int};
Point(14) = {(Lx+lx)/2-e, (Ly-ly)/2 + e, 0, th_int};

Point(15) = {(Lx-lx)/2+e, (Ly+ly)/2-e, 0,th_int};
Point(16) = {(Lx+lx)/2-e, (Ly+ly)/2- e, 0, th_int};


//+
Line(1) = {13, 11};
//+
Line(2) = {11, 9};
//+
Line(3) = {9, 5};
//+
Line(4) = {5, 8};
//+
Line(5) = {8, 7};
//+
Line(6) = {7, 6};
//+
Line(7) = {6, 10};
//+
Line(8) = {10, 12};
//+
Line(9) = {12, 14};
//+
Line(10) = {14, 16};
//+
Line(11) = {16, 15};
//+
Line(12) = {15, 13};
//+
Curve Loop(1) = {11, 12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
//+
Plane Surface(1) = {1};
//+
Line(13) = {1, 2};
//+
Line(14) = {2, 3};
//+
Line(15) = {3, 4};
//+
Line(16) = {4, 1};
//+
Curve Loop(2) = {16, 13, 14, 15};
//+
Plane Surface(2) = {2};
//+
Physical Curve("int", 17) = {11, 12, 1, 2, 3, 4, 5, 6, 10, 9, 8, 7};
//+
Physical Curve("ext", 18) = {13, 14, 15, 16};
//+
BooleanDifference{ Surface{2}; Delete; }{ Surface{1}; Delete; }
//+
Physical Surface("total", 19) = {2};
