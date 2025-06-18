//+
SetFactory("OpenCASCADE");
Sphere(1) = {0., 0., 0., 1., -Pi/2, Pi/2, 2*Pi};

Physical Surface("surface",1) = {1};

Mesh 2;

Save "unit_sphere_coarse.msh";
