+++
title = "Homework 09 Parabolic Equations"
weave = false
+++

# Homework 09

- [Click here to download this notebook](Parabolic_equations.ipynb)
  
<!-- - \textinput{homeworks/Parabolic_equations.md} -->

**Exercise 1. Maximum Principle Theorem**

Let $u \in C^1[0,T] \times C^2(Ω)$, satisfying $\partial_t - \Delta u > 0$.

a.- Show that,

$$
\max{u}_{[0,T] \times \Omega} = \max{u}_{\partial([0,T] \times \Omega)}.
$$

b.- Extend to the case $\partial_t - \Delta u > 0$.

c.- What does it say physically for the case of the heat equation?

d.- Solve the heat equation in the interval $[0,L]$ with homogeneous Dirichlet boundary conditions and initial data $u_0(x) = x * (x-L)$, find the maximum for each time and check the validity of the above theorem. What happens if you now solve for boundary conditions $u_0(0) = 0, u_0(L) = L^2/8$. 

**Exercise 2. Solving using Fourier Series**

a.- Solve the heat equation in the unit circle using Fourier Transform. 

b.- Using as initial data $u(x,t=0) = x*(1-x)$ find the maximum and its location for each time and check the validity of the maximum principle theorem of Exercise 1.

**Exercise 4. Sources**

a.- Using a base of eigenfunctions solve for arbitrary sources the heat equation on the unit circle.

b.- Check that the solution belongs to arbitrary Sobolev spaces in space for any $t>0$ even when it only belonged to $L^2$ at $t=0$. What does that say about the differentiability of the solution in space? And in time?

**Exercise 4. Boundary Conditions**

Solve the heat equation in an interval $[0,L]$.

a.- With homogeneous Dirichlet boundary conditions $u(0,t)=u(L,t)=0$.

b.- With homogeneous Neumann boundary conditions $u_x(0,t)=u_x(L,t)=0$.

c.- With mixed boundary conditions $u(0,t)=0$ and $u_x(L,t)=0$. 

d.- With Robin boundary conditions $u(0,t)=0$ and $u_x(L,t) + au(L,t)=0$.

e.- With periodic boundary conditions $u(0,t)=u(L,t)$ and $u_x(0,t)=u_x(L,t)$.

f.- With non-homogeneous Dirichlet boundary conditions $u(0,t)=0$ and $u(L,t)=S$, where $S$ is a constant.

g.- Compute the energy loss formula for the case d. For which values of $a$ the solution is stable? What does it mean physically?

**Exercise 5. Behaviour of solutions, smoothness and infinite propagation speed of the heat equation.**
Consider the heat equation in one space dimension:
$$
\frac{\partial u}{\partial t} = \alpha\frac{\partial^2 u}{\partial x^2}, \quad u(x,0) = u_0(x).
$$
a.- Show that the solution to the heat equation with initial data $u_0(x)$ is given by the convolution of the initial data with the fundamental solution:
$$
u(x,t) = \int_{-\infty}^{\infty} K(x-y,t)u_0(y)dy,
$$
where the fundamental solution is given by:
$$
K(x,t) = \frac{1}{\sqrt{4\pi \alpha t}}e^{-\frac{x^2}{4\alpha t}}.
$$

b.- Show that the solution is smooth in both $x$ and $t$ for all $t>0$ and that the solution is infinitely differentiable in both $x$ and $t$ for all $t>0$. Check that the same holds for the solutions found on the previous exercise. 

c.- Argue that even when the initial data is of compact support the solution extends to infinity for any $t>0$.

d.- The solution decays exponentially fast as $|x| \to ∞$.