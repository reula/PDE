+++
title = "Homework 05 Ordinary Differential Equations"
weave = false
+++

# Homework 05

- [Ordinary Differential Equations (notebook version)](ODEs.ipynb)
  
## Due date: 

**Exercise 1. Linear Systems**

a. Prove that $(\vec{X}_{t_0}^t)^{-1}=\vec{X}_t^{t_0}$.

b. Prove that $\vec{X}_{t_0}^t$ does not depend on the basis used.

**Exercise 2. Systems and first integrals** 

Consider a body affected by a central force, that is,
\begin{equation}
  m\frac{d^2\vec{x}}{dt^2} = f(r)\vec{x}\;\;\; r:= |\vec{x}|.
\end{equation}

a. Find an equivalent first-order system.

b. Verify that given any (constant) vector $\vec{c}$, then
   $F(\vec{x},\vec{p}) := \vec{c}\cdot(\vec{x}\wedge \vec{p})$,
   where $\vec{p} := \frac{d\vec{x}}{dt}$, is a first integral.

**Exercise 3. Fundametal theorem**

a. If $M$ is a compact manifold (example: a sphere
or a torus), it can be proven using the second corollary of the Fundamental Theorem that all 
its phase curves are defined for all $t$. 
However, there are some that might not
closed, give an example.
Consider the equation:
\begin{equation}
  \frac{d\vec{x}}{dt} = \vec{x} \wedge \vec{\omega}(\vec{x}).
\end{equation}

b. See that $R:= \vec{x}\cdot\vec{x}$ is a first integral.

c. Conclude that the solutions of this system exist for all time.

**Exercise 4. Stability**

***The Volterra-Lotka Equation***

Consider the system:

\begin{align*}
  \dot{x}_1 &=& (a-bx_2)x_1 \nonumber \\
  \dot{x}_2 &=& -(c-f x_1)x_2,
\end{align*}
$a, b, c, f \geq 0$.

a. Perform a coordinate and time transformation to bring it to the form,
\begin{align*}
  \dot{x}_1 &=& (1 - x_2)x_1 \nonumber \\
  \dot{x}_2 &=& -(e - x_1)x_2
\end{align*}

b. Plot the vector field and see that there are no non-trivial first integrals in the quadrants where at least one of the coordinates is negative.

c. Find the equilibrium solutions and determine which are stable and which are not.

d. Examine the positive quadrant using the transformation:
$x_1 = e^{q_1}$, $x_2 = e^{q_2}$ and see that the quantity
$f(q_1,q_2) := e q_1 + q_2 -(e^{q_1} + e^{q_2})$ is an integral
of motion. Use this information to infer that in this
quadrant the trajectories remain in bounded regions.

e. Examine the linearized equations around the equilibrium solution in the positive quadrant and determine the frequency of oscillations of the variations near equilibrium that the system would have.

Note, this equation describes the population of two competing species.
What we have just seen is that the species do not grow indefinitely nor
disappear. This last point tells us that the approximation is not
very good...
Note that $x_2$ represents a predator that depends exclusively on
the prey $x_1$ for its subsistence, since if the prey becomes extinct, the predator follows.


**A generalization**

If in the previous system the species have other alternative means of
subsistence then the resulting equations are:
\begin{align*}
  \dot{x}_1 &=& (1 -x_1 - ax_2)x_1 \\
  \dot{x}_2 &=& (1 -x_2 + bx_1)x_2
\end{align*}

where another parameterization has been used.

a. Find the equilibrium solutions for the cases i) $0< a <1$, 
and ii) $1 < a$.

b. It is observed that $b \approx 3a$ ($a$ indicates how aggressive the
predator is). What is the value of $a$ if its instinct leads it to maximize the
population of its species while maintaining a stable equilibrium?

c. Look at the system near its equilibrium solution and determine the
frequency of the oscillations in the number of species that you would expect
in that environment.

**A larger system**

Study the following system
\begin{align*}
  \dot{x}_1 &= x_1 - x_1x_2 - x_2^3 + x_3(x_1^2 + x_2^2 -1 - x_1 +x_1x_2+ x_2^3) \\
  \dot{x}_2 &= x_1 - x_3(x_1 - x_2 + x_1 x_2) \\
  \dot{x}_3 &= (x_3 -1)(x_3+2x_3x_2^2 + x_3^3)
\end{align*}

a. Find the equilibrium points.

b. Show that the planes $x_3=0$ and $x_3 = 1$ are invariant sets,
(that is, solutions that start in them never leave them).

c. Consider the invariant set $x_3 = 1$ and see if it has periodic solutions.

**Excercise 5 Limit Cycle**

Consider the system:
\begin{align*}
  \dot{x}_1 &= x_2 + x_1(1-(x_1^2+x_2^2)) \\
  \dot{x}_2 &= -x_1 + x_2(1-(x_1^2+x_2^2)).
\end{align*}

a. Transform this system into a pair of decoupled equations,
\begin{align*}
  \dot{r} &=  f(r) \\
  \dot{\theta} &= -1.
\end{align*}

b. Study the equilibrium points of the first equation and their stability.
What is the solution of the original system corresponding to this equilibrium point?

c. Plot solutions near these points, in the $(r,\theta)$ plane and in the
$(x_1,x_2)$ plane.

d. Use the method described at the end of chapter 6 to corroborate the stability 
found in point b.