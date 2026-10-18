+++
title = "Homework 06 Hyperbolic Equations"
weave = false
+++

  
# Homework 6: Hyperbolic Equations

- [Click here to download this notebook](Hiperbolic_equations.ipynb)

## Due date: 

### Student Name:

**Exercise 1. Burgers' Equation** 

a.- Find an infinite number of conserved quantities for Burgers' equation, $u_t = u\, u_x$.

b.- Let the initial data for Burgers' equation be: $u_0(x) = \chi_{[0,1]}(x)$ (the characteristic function of $[0,1]$). Draw the characteristic surfaces for that data. 

c.- Use the equation and integration by parts to get an estimate of the form:

$$
\frac{d \mathcal{E}}{dt} \leq C \max{|u_x|}\, \mathcal{E}
$$
where

$$
\mathcal{E} := \int [u^2 + u_x^2 + u_{xx}^2]\;dx
$$
and $C$ is a constant (find it).

**Exercise 2. Propagation Cones** 

a.- Find a covector $n_a$ so that the following system is hyperbolic:

\begin{align*}
l_1^a \nabla_a \phi_1 &= F_1(\phi_1,\phi_2,\phi_3) \\
l_2^a \nabla_a \phi_2 &= F_2(\phi_1,\phi_2,\phi_3) \\
l_3^a \nabla_a \phi_3 &= F_3(\phi_1,\phi_2,\phi_3)
\end{align*}
where the three vectors are linearly independent. 
What does that condition on $n_a$ mean geometrically? Find the Cones and Propagation Cones. 
Understand geometrically both constructions. 

b.- How many cones and co-cones can you construct by multiplying some of the equations by $-1$?

c.- Find the cones and co-cones for the fluid equations:

\begin{align*}
\rho_t &= -(\rho u)_x \;\;\;\;\; \text{particle number conservation}\\
(\rho u)_t &= -(\rho u^2 + p)_x\;\;\;\; \text{momentum conservation}
\end{align*}
where $p = p(\rho)$ is the pressure, $\rho$ the density and $u$ the fluid velocity.

**Exercise 3. Electromagnetism** 

Consider the evolutionary Maxwell equations:

\begin{align*}
\frac{\partial \vec{E}}{\partial t} &= \nabla \wedge \vec{B} \\
\frac{\partial \vec{B}}{\partial t} &= -\nabla \wedge \vec{E}
\end{align*}

a.- Find the cones and co-cones.

b.- Show that:

$$
\mathcal{E} := \int [\vec{E}\cdot \vec{E} + \vec{B} \cdot \vec{B}]\; d^3x 
$$
is conserved. 



The covariant treatment, including constraints, can be seen from the example given in page 34 of Geroch article: https://arxiv.org/abs/gr-qc/9602055.
There a generic hyperbolization is found for Electromagnetism in terms of the Faraday tensor $F_{ab}$.