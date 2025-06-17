+++
title = "Finite Elements and Poisson Equation"
weave = false
+++

- [Click here to download this notebook](Lab_7.ipynb)

### Important 1: ###
For this assignment, you must have the packages `Gridap.jl` and `Gmsh.jl` installed, as well as one of the compatible visualizers: **VisIt** https://wci.llnl.gov/simulation/computer-codes/visit/ or **Paraview** https://www.paraview.org/

### Important 2: ###
Rename the file as:  
`group_name_lab_7.ipynb`

**All the generated code and the presentation must be included in this notebook.**

**The objectives of the assignment are varied:**

1. Get familiar with the `Gridap` package and solving problems using **Finite Elements**.
2. Solve Dirichlet problems for the Laplace or Poisson equation. 
3. Get acquainted with modern visualizers.
4. Process the obtained data.

**1)** Run the notebook `Poisson_example.ipynb` in its test mode and verify that it works correctly. Experiment with different "solution" functions and their "sources". Visualize the results using the selected visualizer (VisIt or Paraview).

**2)** Experiment with different solver configurations (different methods, number of iterations, tolerances). Try different types of Finite Elements and different orders.

**3)** Run the notebook `Poisson_example_b2.ipynb` with options for computing the capacities of different conductor configurations. Experiment with different conductor setups, or by changing their relative distances, sizes, shapes, etc.

**4)** Use different resolutions and observe how it affects the computed capacities.

**5)** For the adventurous: Change the boundary conditions to Neumann or Mixed, think of a specific (physical or engineering) problem and apply them.  
Asymptotic conditions: For isolated systems, boundary conditions of the "Robin" type are used. These impose a decay like (in 3D) $u = \frac{C}{r}$ without specifying $C$, for example by imposing (in 3D) $\partial_r u + \frac{u}{r} = 0$ on a sphere of radius $R$ large enough. Implement this condition for this system (in 2D).
.