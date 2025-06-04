+++
title = "Conservative methods"
weave = true
+++

- [Click here to download this notebook](Lab_6.ipynb)

**Authors:** Pablo Montes, Oscar Reula, Joaquin Pelle

### Important 1:
This notebook is designed to run in Julia.

### Important 2:

Rename the file as: 
`group_name_assignment_6.ipynb`

**All generated code and presentation must be included in this notebook.**

**The objective of this assignment is multifaceted:**

1. Become familiar with the shock formation phenomenon.
2. Become familiar with shock capturing methods.
3. Go through the process of implementing new code.


**1)** In the directory, you will find a notebook with different shock capturing methods. 
One of second order *KT2* and two of fifth order, *MP5* and WENOZ. 
Both evolve the advection equation, ($u_t = c u_x$), as well as the Burgers equation, $u_t = \frac{1}{2}(u^2)_x$. They do so in a circle (periodic boundary conditions) of length L.

Evolve both (with WENOZ): 

1. For the first equation, verify that the solution moves at constant speed.
2. For the second equation, verify that a shock forms at a given time.
    1. Discuss how to find when and where the shock forms.
    2. Verify that the shock formation time coincides with the theoretically calculated time.
    3. Observe that the shock decays over time, and experimentally determine the decay law.
    
**2)** Evolve the advection equation with all three methods: 

1. Compare the results and describe what happens. Compare with different values of $\theta$ (for *KT2*), different final times, and different spatial and temporal resolutions.
2. Examine the convergence of the methods (calculate the Q factor in the corresponding norms).
3. Compare with what you would obtain using a conventional 4th order finite difference method.

Repeat the first two points with the Burgers equation.

**3)** Choose a D=1 conservative system and implement code to evolve it.
The following two systems are given as examples, but you can choose any other.
It is better if you have knowledge of the behavior of the system you choose.

1. Euler: the variables are density $\rho$ and momentum $p^x$, $U=(\rho, p^x)$.
\begin{align}
\dot{\rho} &= -\partial_x(p^x) \\
\dot{p^x} &= -\partial_x(\frac{p^x p^x}{\rho} + p_0 \rho^{\gamma})
\end{align}
With a recommended value of $\gamma = 1.3$. You must take an initial condition where $\rho$ is positive and not close to zero. The propagation speed of the fluid is: $c^2 = \frac{dp}{d\rho} = \gamma p/\rho = \gamma p_0 \rho^{\gamma-1}$
    
2. Force-Free: the variables are the magnetic field (y component) and the Poynting vector (x and y components), $U = (S^x, S^y, B^y)$
\begin{align}
\dot{S^x} &= -\partial_x(T^{xx}) = \partial_x(-e + B_x^2) \\
\dot{S^y} &= -\partial_x(T^{xy}) = \partial_x(B_xB_y) \\
\dot{B^y} &= \partial_x(v^x B^y + v^y B^x) 
\end{align}
Where, $e = \frac{1}{2}(E_z^2 + B_x^2 + B_y^2) = \frac{1}{2}(\frac{S_x^2+S_y^2}{B_x^2+B_y^2}+B_x^2+B_y^2)$ and $v^i = \frac{S^i}{B^2}$. For this equation $B^x$ is a constant *not equal to zero*. Additionally, $S^i$ must be perpendicular $\sum_i S^i B^i = 0$ with $\sum_i (v^i) < 1$.