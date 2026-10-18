+++
title = "Lab 9 Eigenvalue problems"
weave = false
+++

# Lab 9: Eigenvalue problems with finite elements

- [Click here to download this notebook](Lab_9.ipynb)

**Material for this lab**

- `eigenvals_1D_eqn.ipynb` ([download](eigenvals_1D_eqn.ipynb) · [view](https://nbviewer.org/github/reula/PDE/blob/main/labs/09-Eigen/eigenvals_1D_eqn.ipynb)): the one-dimensional Sturm–Liouville problem $-(p u')' + q u = \lambda r u$ with Dirichlet ends, solved with finite element matrices and a shift-invert Arnoldi method. It includes three tests with known spectra: $-u''$ on $[0,\pi]$, the case $p = x$, $r = 1/x$ on $[1,L]$, and the harmonic oscillator.
- `simple_cavity.ipynb` ([download](simple_cavity.ipynb) · [view](https://nbviewer.org/github/reula/PDE/blob/main/labs/09-Eigen/simple_cavity.ipynb)): eigenmodes of the Dirichlet Laplacian, $-\Delta u = \lambda u$, in two dimensions (the TM modes of a cavity): a square (test case, with eigenvalues $n^2 + m^2$), a square with a circular hole, an annulus and an open box.
- [eigen.jl](eigen.jl): helper that builds the stiffness and mass matrices and calls `Arpack.eigs`. Put it next to the notebooks.
- Meshes: the notebooks read them from a `models/` folder next to the notebook: [1D.msh](models/1D.msh), [cavity_box.msh](models/cavity_box.msh), [circle_circle.msh](models/circle_circle.msh), [square_circle.msh](models/square_circle.msh), [rectangle.msh](models/rectangle.msh). To build your own: [mesh_generator.jl](models/mesh_generator.jl).

Besides `Gridap`, `GridapGmsh`, `GridapMakie` and `GLMakie`, these notebooks need the package `Arpack`.

### Important 1
For this assignment, you must have the `Gridap` and `GridapGmsh` packages installed, as well as one of the compatible visualizers: **VisIt** https://wci.llnl.gov/simulation/computer-codes/visit/ or **Paraview** https://www.paraview.org/

### Important 2
Rename the file as: 
**group_name_lab_9.ipynb** or **your_last_name_first_name_lab_9.ipynb**

**All generated code and the presentation must be included in this notebook.**

**The objectives of the assignment are varied:**

1. Get familiar with eigenvalue/eigenvectors problems using **Finite Elements**.
2. Solve problems in one and two dimensions, and get codes to modify for use in research problems.
3. Process the obtained data.


**1)** Run the notebook **eigenvals_1D_eqn.ipynb** with the tests options and check that it works correctly. Experiment with different problems. Search for new problems and try them out. 

**2)** Experiment with different solver configurations (different methods, different number of iterations, tolerances). Try different types of Finite Elements and different orders.

**3)** Run the notebook **simple_cavity.ipynb** with the different meshes options. Choose one of the grids and study convergence of the methods by changing grid resolutions and bases types and orders. 

**4)** Make your own mesh using Gmsh and import it to the notebook. Don't forget to include it when sending finished lab. 

**5)** Use different resolutions and see how it affects the calculated eigenvalues and eigenvectors.
Use cases where you know the solution. This is the case for instance for the annulus configuration.

**6)** Search for new problems and try them out. You can add a potential, change the integration domain or change the boundary conditions or the equations. 

**7)** For the adventurous: Change the boundary conditions to Neumann. In that case, for the functional spaces you have to add `constraint = :zeromean` so as to avoid the constant solution.
