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

// Points for a smaller square

lc_f = 1e-1/4;
Point(10)={1.25, 0.25, 0, lc_f};
Point(11)={1.75, 0.25, 0, lc_f};
Point(12)={1.75, 0.75, 0, lc_f};
Point(13)={1.25, 0.75, 0, lc_f};

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

// make the small square

Line(9) ={10, 11};
Line(10)={11, 12};
Line(11)={12, 13};
Line(12)={13, 10};

// #the rectangle

Curve Loop(20)={1, 2, 3, 4};

//#the inner circle

Curve Loop(21)={5, 6, 7, 8}; 

// the small square

Curve Loop(22)={9, 10, 11, 12};

Plane Surface(100)={20,21,22};
//#the surface


//# make the surface

Physical Surface("surface",4) = {100};

Physical Curve("ext",3) = {1,2,3,4};

Physical Curve("circle",2) = {5,6,7,8};

Physical Curve("square",1) = {9, 10, 11, 12};

Mesh 2;

Save "rectangle_hole_square.msh";
