+++
title = "Parabolic equations"
weave = true
+++

- [Click here to download this notebook](Lab_5.ipynb)

---

### Important 1

This notebook is designed to be run in Julia. 

---

### Important 2

Before handling it please rename this file accordingly as:  
`group_name_assignment_5.ipynb`

or 

`your_last_name_first_name_lab_5.ipynb`

---

All generated code and your presentation must be included in this notebook.

---

## Objectives

- Become familiar with solving parabolic equations.
- Test some of the analytic estimates covered in class.
- Go through the process of implementing a new code.

## Problem 1:

a. Take the code given in the class notebook to solve the one-dimensional heat equation and modify it so that it has non-trivial Neumann boundary conditions. 

b. Check that with homogeneous Neumann boundary conditions the sum of the vector components `sum(sol(t))`is constant to a good precision.

c. Check that the energy decays. 

d. Check that with homogeneous Dirichlet or Neumann boundary the $l^2$ norm of the finite difference approximation of a first order derivative satisfies the decay rate found in class. To fit data you can use the library `LsqFit.jl`.
For most data the dacay will be much faster. For which initial data you will approach the decay estimate? 

---

## Problem 2:

Solve a 2D problem using the code given in the class notebook. Take a anulus between radious $R0 = 1$ and $R2 = 2$.
Use $(r, \theta)$ coordinates. In this coordinates the expression for the laplacian is:

$$
\Delta u = \frac{\partial^2 u}{\partial r^2} + \frac{1}{r} \frac{\partial u}{\partial r} + \frac{1}{r^2} \frac{\partial^2 u}{\partial \theta^2} 
$$

So, for a function $u(r, \theta)$:

$$
 \boxed{ \Delta u = u_{rr} + \frac{1}{r} u_r + \frac{1}{r^2} u_{\theta\theta} } 
 $$

 **a.** Solve this problem with interior Dirichelet boundary condtion given by $g_l(\theta) = sin(\theta)$ and Neumann exterior boundary condition. Notice that the $\theta$ coordinate is periodic, so for it use the periodic finite difference operators. Evolve up to $T=1.0$
Plot the initial data and the solution at that time. 
**b.** Compute the analytic solution and compare. Study convergence.
**c.** If possible plot the results in cartesian coordinates.
---

## Problem 3:

a. Solve Burger's equation with dissipation:

$$
\partial_t u - u \partial_x u - ε \partial_x^2 u = 0
$$

In a domain $[-\pi, \pi]$ with Dirichlet boundary conditions on both extremes (using penalties), $u(-\pi,t) = -1$, $u(\pi, t) = 1$. Use as a initial data,

$$
f(x) = sin(x/2)
$$

b. Plot the results at $T=1.2$ for different $ε$'s. Study what happens when $\varepsilon \to 0$. 