+++
title = "Lab 8 Evolution problems with finite elements"
weave = false
+++

# Lab 8: Evolution problems with finite elements

In this lab the finite element machinery of [Lab 7](/labs/07/) is combined with the Crank–Nicolson time integrator to evolve parabolic and Schrödinger-type equations on two-dimensional domains. The system matrix is assembled once, and each time step is a linear solve.

**Notebooks**

- `QM.ipynb` ([download](QM.ipynb) · [view](https://nbviewer.org/github/reula/PDE/blob/main/labs/08-Evol/QM.ipynb)): the free Schrödinger equation $i u_t = \Delta u$ on the unit square with homogeneous Dirichlet conditions, using complex finite elements. Crank–Nicolson is unitary here, so the $L^2$ norm is conserved; the notebook monitors it, checks convergence against an exact eigenmode and evolves wave packets. Note the sign convention: with $i u_t = \Delta u$, packets move in the direction opposite to their wave vector.
- `Double_Slit.ipynb` ([download](Double_Slit.ipynb) · [view](https://nbviewer.org/github/reula/PDE/blob/main/labs/08-Evol/Double_Slit.ipynb)): the same solver applied to a wave packet hitting a double slit, on an unstructured mesh, with an optional absorbing layer near the boundary.
- `Heat.ipynb` ([download](Heat.ipynb) · [view](https://nbviewer.org/github/reula/PDE/blob/main/labs/08-Evol/Heat.ipynb)): the heat equation $u_t = \Delta u$ with the same method. It includes a test against an exact decaying mode.

The notebooks need `Gridap`, `GridapGmsh`, `GridapMakie`, `GLMakie` and `FileIO`. The results are written as `.vtu` files in a `Results/` folder, to be visualized with VisIt or Paraview.

**Meshes** for the double slit, to be placed in a `models/` folder next to the notebook: [double_slit_junta_dis.msh](models/double_slit_junta_dis.msh) (the one used by the notebook), [double_slit.msh](models/double_slit.msh), [double_slit_junta.msh](models/double_slit_junta.msh), [double_slit_grosa.msh](models/double_slit_grosa.msh).
