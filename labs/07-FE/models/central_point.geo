box_size = 50;
lb = 10.;
Point(1) = {-box_size/2, -box_size/2, 0, lb};
Point(2) = {box_size/2, -box_size/2, 0, lb};
Point(3) = {box_size/2, box_size/2, 0, lb};
Point(4) = {-box_size/2, box_size/2, 0, lb};
Point(5) = {0, 0, 0, lb/10};
Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 1};
Line Loop(5) = {1, 2, 3, 4};
Plane Surface(6) = {5};
//Extrude {0, 0, box_size} {
//  Surface{6};
//}

Point{5} In Surface {6};
//+
Physical Point('point') = {5};
//+
Physical Curve('boundary') = {4, 1, 2, 3};
//+
Physical Surface(9) = {6};
//+
Show "*";
