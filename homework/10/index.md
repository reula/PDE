+++
title = "Homework 10 Elliptic Equations"
weave = false
+++

# Homework 10

- [Click here to download this notebook](Elliptic_equations.ipynb)
  
<!-- - \textinput{homeworks/Ellipcit_equations.md} -->

## 1. Warming up

**a.-** Solve 

$$
\Delta u = f,
$$
in a rectangle of sides $(L_1,L_2)$,
with the following boundary conditions and sources:

1. Homogeneous Dirichlet boundary conditions and $f$ arbitrary in $L^2$.
2. Homogeneous Neumann boundary conditions and $f$ arbitrary in $L^2$. What further condition is need to assert a solution exists?
3. Mixed boundary conditions, look at what means a Robin boundary condition.

**b.-** From the structure of the solutions check that if $f \in H^s$ then $u \in H^{s+2}$.

**c.-** Solve for inhomogeneous Dirichlet boundary conditions. Assume you can decompose the boundary data into the boundaries values for the eigenfunctions of the Laplacian at the rectangle. What can you conclude about the smoothness of the solution in the interior?

## 2. Clasification

**Exercise 1.1**  
Classify the following PDEs as elliptic, parabolic, or hyperbolic:
1. $\Delta u + u = 0$ (Helmholtz equation)  
2. $u_{xx} + 2u_{xy} + u_{yy} = 0$  
3. $u_{xx} - u_{yy} + 2u_x = 0$  
4. $\text{div}(a(x)\nabla u) = f(x)$, where $a(x) > 0$.

**Exercise 1.2**  
Show that the PDE $u_{xx} + \cos(x) u_{xy} + \sin(x) u_{yy} = 0$ is elliptic in a region of $\mathbb{R}^2$. Find this region.

## 3. Maximum Principles
**Exercise 3.1**  
Prove the weak maximum principle for $\Delta u = 0$ in a bounded domain $\Omega \subset \mathbb{R}^n$: If $u \in C^2(\Omega) \cap C(\overline{\Omega})$, then  
$$
\max_{\overline{\Omega}} u = \max_{\partial \Omega} u.
$$

**Exercise 3.2**  
Let $u$ satisfy $\Delta u \geq 0$ in $\Omega$. Show that if $u$ attains a maximum at an interior point, then $u$ is constant.

**Exercise 3.3**  
For $\Delta u + c(x)u = 0$ with $c(x) \leq 0$, prove that if $u$ attains a non-negative maximum inside $\Omega$, then $u$ is constant.

## 4. Existence and Uniqueness
**Exercise 4.1**  
Use Lax-Milgram to show that the Dirichlet problem  
$$
-\Delta u + u = f \text{ in } \Omega, \quad u = 0 \text{ on } \partial \Omega
$$  
has a unique weak solution in $H^1_0(\Omega)$ for $f \in L^2(\Omega)$.

**Exercise 4.2**  
For the Neumann problem $-\Delta u = f$ with $\frac{\partial u}{\partial n} = g$:  
(a) Find a necessary condition on $f,g$ for solvability.  
(b) Show solutions are unique up to additive constants.

## 5. Variational Methods
**Exercise 5.1**  
Show that minimizers of  
$$
J(u) = \int_\Omega \left( \frac{1}{2} |\nabla u|^2 - fu \right) dx
$$  
over $H^1_0(\Omega)$ solve $-\Delta u = f$.

**Exercise 5.2**  
Prove the first Dirichlet eigenvalue $\lambda_1$ of $-\Delta$ satisfies:  
$$
\lambda_1 = \min_{\substack{u \in H^1_0(\Omega) \\ u \neq 0}} \frac{\int_\Omega |\nabla u|^2 dx}{\int_\Omega u^2 dx}.
$$

## 7. Nonlinear Elliptic Equations
**Exercise 7.1**  
Show that a weak solution exists for  
$$
-\Delta u + u^3 = f \text{ in } \Omega, \quad u = 0 \text{ on } \partial \Omega,
$$  
when $f \in L^2(\Omega)$.

**Exercise 7.2**  
Prove that for $-\Delta u = e^u$ in $\Omega \subset \mathbb{R}^n$ bounded,  
$$
\sup_\Omega u \leq \sup_{\partial \Omega} u + C(\Omega).
$$

