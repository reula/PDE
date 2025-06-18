lc = 1e-1/2;
Point(1)={ 0, 0, 0, lc};
Point(2)={2.0, 0,  0, lc};
Point(3)={2.0, 1.0, 0, lc};
Point(4)={0, 1.0, 0, lc};
//# now points for a circle
lc_f = 1e-1/4;
Point(5)={0.50, 0.25, 0, lc_f};
Point(6)={0.75, 0.50, 0, lc_f};
Point(7)={0.50, 0.75, 0, lc_f};
Point(8)={0.25, 0.50, 0, lc_f};
Point(9)={0.50, 0.50, 0, lc_f};

//# make the square boundary
Line(1)={1, 2};
Line(2)={2, 3};
Line(3)={3, 4};
Line(4)={4, 1};

//# make the circle
Circle(5)={5,9,6};
Circle(6)={6,9,7};
Circle(7)={7,9,8};
Circle(8)={8,9,5};

Curve Loop(10)={1, 2, 3, 4};
// #the rectangle

Curve Loop(12)={5, 6, 7, 8}; 
//#the inner circle

Plane Surface(100)={10,12};
//#the surface


//# make the surface

Physical Surface("surface",3) = {100};

Physical Curve("ext",2) = {1,2,3,4};

Physical Curve("int",1) = {5,6,7,8};

Mesh 2;

Save "rectangle_hole.msh";
