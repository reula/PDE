+++
title = "Homework 07 Boundary Values"
weave = false
+++

# Homework 07

- [Click here to download this notebook](Boundary_Values.ipynb)
  
**Exercise 1: Characteristics and Boundary Conditions**

Consider the advection equation:  
\begin{align*}
u_t + a u_x = 0,
\end{align*}  
for $x \in (0,1),\ t > 0$ and $a \in \mathbb{R} \setminus \{0\}$ with initial condition $u(x,0) = u_0(x)$.

1. Sketch the characteristics in the $(x, t)$ plane.
2. Explain why a boundary condition is required at $x=0$ but not at $x=1$.
3. What happens if you impose a boundary condition at $x=1$?


**Exercise 2: First-Order Hyperbolic System and Incoming Characteristics**

Consider the 1D wave equation in first-order form:
\begin{align*}
u_t &= v_x \\
v_t &= u_x
\end{align*}
for $x \in (0,1),\ t > 0$ with initial data $u(x,0), v(x,0)$.

1. Diagonalize the system using the change of variables $w^\pm = u \pm v$.
2. Determine the characteristic speeds of $w^+$ and $w^-$.
3. Based on the characteristic directions, determine:
   - how many boundary conditions are needed,
   - at which boundaries they must be imposed,
   - and for which variables.

**Exercise 3: Energy Conservation in the Wave Equation**

Let $ u(x,t) $ satisfy the wave equation on $ (0,L) $:  
\begin{align*}
u_{tt} = c^2 u_{xx}, \quad x \in (0,L),\ t > 0,
\end{align*}  
with smooth initial data $ u(x,0) = u_0(x),\ u_t(x,0) = v_0(x) $ and smooth boundary conditions.

1. Derive the energy identity:  
\begin{align*}
\frac{d}{dt} \int_0^L \left( \frac{1}{2} u_t^2 + \frac{c^2}{2} u_x^2 \right) dx = \text{boundary terms}.
\end{align*}
2. For which of the following boundary conditions is the energy conserved?
   - Dirichlet: $ u(0,t) = u(L,t) = 0 $
   - Neumann: $ u_x(0,t) = u_x(L,t) = 0 $
   - Mixed: $ u(0,t) = 0, \ u_x(L,t) = 0 $
3. Discuss how boundary conditions affect the stability and physical interpretation of the solution.


