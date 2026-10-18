+++
title = "Lab 7 Finite Elements and Poisson Equation"
weave = false
+++

# Lab 7: Finite elements and the Poisson equation

- [Click here to download this notebook](Lab_7.ipynb)

**Material for this lab**

- [Poisson example](/labs/07-PE/): [download the notebook](/weave/lab07/Poisson_example.ipynb)
- [Calculating capacitances](/labs/07-CAP/): [download the notebook](/weave/lab07/Poisson_example_cap.ipynb)
- Meshes: the notebooks read them from a `models/` folder next to the notebook. Download the ones you need: [rectangle_hole_coarse.msh](models/rectangle_hole_coarse.msh), [rectangle_hole_fine.msh](models/rectangle_hole_fine.msh), [rectangle_hole_finer.msh](models/rectangle_hole_finer.msh), [rectangle_hole_square_coarse.msh](models/rectangle_hole_square_coarse.msh), [rectangle_hole_square_intermediate.msh](models/rectangle_hole_square_intermediate.msh).
- To build your own meshes: [mesh_generator.jl](mesh_generator.jl).

### Important 1

For this assignment you need the Julia packages `Gridap`, `GridapGmsh` and, for the plots, `GridapMakie` with `GLMakie`, as well as one of the compatible visualizers: **VisIt** <https://wci.llnl.gov/simulation/computer-codes/visit/> or **Paraview** <https://www.paraview.org/>.

### Important 2

Rename the file as:
`group_name_lab_7.ipynb` or `your_last_name_first_name_lab_7.ipynb`

**All the generated code and the presentation must be included in this notebook.**

**The objectives of the assignment are varied:**

1. Get familiar with the `Gridap` package and solving problems using **Finite Elements**.
2. Solve Dirichlet problems for the Laplace or Poisson equation.
3. Get acquainted with modern visualizers.
4. Process the obtained data.

**1)** Run the notebook `Poisson_example.ipynb` with its test solution and verify that it works correctly, both with Dirichlet conditions on all the boundary (`full_dirichlet`) and on the inner boundary only (`int_dirichlet`). Experiment with different "solution" functions and their "sources". Visualize the results using the selected visualizer (VisIt or Paraview).

**2)** Experiment with different solver configurations (different methods, number of iterations, tolerances). Try different types of Finite Elements and different orders.

**3)** Run the notebook `Poisson_example_cap.ipynb` with options for computing the capacities of different conductor configurations. Experiment with different conductor setups, or by changing their relative distances, sizes, shapes, etc.

**4)** Make your own mesh using Gmsh and import it into the notebook. Don't forget to include it when you hand in the lab.

**5)** Use different resolutions and observe how it affects the computed capacities. For simple models you can use methods similar to the ones in the [Gridap validation tutorial](https://gridap.github.io/Tutorials/stable/pages/t002_validation/).

**6)** For the adventurous: Change the boundary conditions to Neumann or Mixed, think of a specific (physical or engineering) problem and apply them.
Asymptotic conditions: For isolated systems, boundary conditions of the "Robin" type are used. These impose a decay like $u = \frac{C}{r^n}$ without specifying $C$, by imposing $\partial_r u + \frac{n}{r}u = 0$ on a sphere of radius $R$ large enough (in 3D, $n=1$ for the field of a net charge). Implement this condition for this system in 2D. Note that in 2D the potential of a net charge grows like $\ln r$, so a decay $1/r^n$ only holds when the total charge vanishes.
