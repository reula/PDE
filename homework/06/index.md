+++
title = "Homework 06 Hyperbolic Equations"
weave = true
+++

  
# Homework 6: Hyperbolic Equations

- [Hyperbolic Equations(notebook version)](Hiperbolic_equations.ipynb)

## Due date: 

### Student Name:

**Exercise 1. Burger's Equations** 

a.- Find an infinite number of conserved quantities for Burger's equations, $u_t = u * u_x$.

b.- Let the initial data for Burger's equation be: $u_0(x) = heaviside(x)*heaviside(1-x)$. Draw the characteristic surfaces for that data. 

c.- Use the equation and integration by parts to get an estimate of the form:

$$
\frac{d \mathcal{E}}{dt} \leq \max{|u_x|} \mathcal{E}
$$
where

$$
\mathcal{E} := \int [u^2 + u_x^2 + u_{xx}^2]\;dx
$$

**Exercise 2. Propagation Cones** 

a.- Find a covector $n_a$ so that the following system is hyperbolic:

\begin{align*}
l_1^a \nabla_a \phi_1 &= F_1(\phi_1,\phi_2,\phi_3) \\
l_2^a \nabla_a \phi_2 &= F_2(\phi_1,\phi_2,\phi_3) \\
l_3^a \nabla_a \phi_3 &= F_3(\phi_1,\phi_2,\phi_3)
\end{align*}
where the three vectors are linearly independent. 
What that condition on $n_a$ geometrically means? Find the Cones and Propagation Cones. 
Understand geometrically both constructions. 

b.- How many cones and co-cones can you construct by multiplying some of the equations by $-1$?

c.- Find the cones and co-cones for the fluid equations:

\begin{align*}
\rho_t &= -(\rho u)_x \;\;\;\;\; \text{particle number conservation}\\
(\rho u)_t &= -(\frac{1}{2}\rho u^2 + p)_x\;\;\;\; \text{momentum conservation}
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



The covariant treatment, including constraints, can be see from the example given in page 34 of Geroch article: https://arxiv.org/abs/gr-qc/9602055.
There a generic hyperbolization is found for Electromagnetism in terms of the Faraday tensor $F_{ab}$.