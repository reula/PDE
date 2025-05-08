+++
title = "Homework 08 Shocks"
weave = false
+++

# Homework 08

- [Shocks(notebook version)](Shocks.ipynb.ipynb)
  
<!-- - \textinput{homeworks/Shocks.md} -->

**Exercise 1.**

Consider Burgers' equation:

$$
    u_t + \frac{1}{2}(u^2)_x = 0,
$$

a.- Find analytically the time and position of the first singularity, that is the time and position of the appearance of the shock. 

b.- With the initial conditions
$$
u(x,0) = 
    \begin{cases} 
    1 & \text{if } x \leq 0, \\
    1 - x & \text{if } 0 < x < 1, \\
    0 & \text{if } x \geq 1,
    \end{cases}
$$

1. Find the time \( t \) when the shock first forms.
2. Determine the shock speed using the Rankine-Hugoniot condition.
3. Sketch the characteristic curves and shock location.


c.- With initial data:
$$
    u(x,0) = 
    \begin{cases} 
    0 & \text{if } x < 0, \\
    1 & \text{if } 0 \leq x \leq 1, \\
    0 & \text{if } x > 1.
    \end{cases}
$$

1. Verify that a shock forms immediately.
2. Compute the shock speed using the Rankine-Hugoniot condition.
3. Compute the decay function for the shock. That is, look at the solution difference at each side of the shock and determine how this difference evolves in time. Hint: the solution turns into a triangular shape. Since the Burgers' equation preserves the area of the solutions we get a relation among the speed and height of the solution. The Rankine-Hugoniot relation gives another relation. Do you expect the same decay rate for generic shock solutions of this equation?

d.- With initial conditions:
$$
    u(x,0) = 
    \begin{cases} 
    0 & \text{if } x < 0, \\
    x & \text{if } 0 \leq x \leq 1, \\
    1 & \text{if } x > 1.
    \end{cases}
$$

1. Identify the rarefaction wave region. 
2. Construct the rarefaction wave solution.
3. Construct another solution having a shock.

e.- With initial data:
$$
    u(x,0) = 
    \begin{cases} 
    -1 & \text{if } x < 0, \\
    1 & \text{if } x \geq 0,
    \end{cases}
$$

1. Show that both a shock and a rarefaction are mathematically possible.
2. Use the **Lax entropy condition** to justify the rarefaction solution.

**Exercise 2.**

Do as in **Exercise 1.** but for the equation:

$$
\partial_t u = u^2 \partial_x u
$$

What happens for the equation:

$$
\partial_t u^2 = \frac{1}{2}u^2\partial_x u?
$$

**Exercise 3. Weak Solutions**

Show that any integrable function $u(t,x) = f(t+x)$ is a weak solution (a distributional solution) of 

$$
u_t = u_x
$$

Hint: integrate in both, space and time, against a test function. Change coordinates to $\zeta = t+x$ and $\eta = t-x$. 

**Exercise 4. Systems of Equations (Euler Equations)**

1D Gas Dynamics Shock Tube
    Solve the Riemann problem for the 1D Euler equations:
$$
    \begin{aligned}
    \rho_t + (\rho u)_x &= 0, \\
    (\rho u)_t + (\rho u^2 + p)_x &= 0, \\
    E_t + (u(E + p))_x &= 0,
    \end{aligned}
$$

with initial data:
$$
    (\rho, u, p) = 
    \begin{cases} 
    (\rho_L, 0, p_L) & \text{if } x < 0, \\
    (\rho_R, 0, p_R) & \text{if } x > 0.
    \end{cases}
$$

a.- Describe the wave structure (shock, rarefaction, contact discontinuity).

b.- State the Rankine-Hugoniot conditions for this system. (*typical structure:* rarefaction, contact discontinuity, shock.)

**Exercise 5. Viscous Shocks (Vanishing Viscosity)**

Study the traveling wave solution (namely a solution that moves without changing its form, that is a solution with in some referential is stationary) to:
$$
    u_t + u u_x = \epsilon u_{xx},
$$
with boundary conditions:
$$
    u(-\infty) = u_L, \quad u(+\infty) = u_R.
$$

1. Derive the ODE for the traveling wave profile $U(x - st)$. Hint: the solution involves a $tanh$
2. Solve for $U$ and show convergence to a discontinuity as $\epsilon \to 0$. 

