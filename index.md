@def title = "PDE Course Book"
@def weave = false

# Partial Differential Equations: Analytical and Numerical Methods

~~~
<figure class="home-hero">
  <div class="home-pair">
    <img src="/assets/images/home/jupiter.png" alt="Vorticity of a fluid on a rotating sphere: a ring breaking up into a crown of cyclones">
    <img src="/assets/images/home/vortex.png" alt="Velocity field of the same fluid on a rotating sphere, with a cluster of vortices">
  </div>
  <figcaption>A ring of vorticity on a rotating sphere breaks up into a crown of cyclones, like those at Jupiter's poles. Left: the vorticity; right: the velocity field.</figcaption>
</figure>
~~~

This book contains the material for the course "Partial Differential Equations: Analytical and Numerical Methods" taught at ICTP–SAIFR in May 2025.

If you come across any errors or have suggestions for improving the book's structure, please don't hesitate to contact the authors. Your feedback is greatly appreciated.

~~~
<div class="home-strip">
  <figure>
    <img src="/assets/images/home/bhns.png" alt="Magnetic field lines between a neutron star and a black hole">
    <figcaption>Magnetic field lines between a neutron star and a black hole.</figcaption>
  </figure>
  <figure>
    <img src="/assets/images/home/jets.png" alt="Jets around a black hole">
    <figcaption>Jets around a black hole.</figcaption>
  </figure>
</div>
<p class="home-credit">Images: simulations by Oscar Reula and collaborators.</p>
~~~

## Introduction and motivation

In this book, we aim to introduce the reader to the expansive field of Partial Differential Equations (PDEs). These equations serve as powerful tools for modeling a remarkable spectrum of natural phenomena—ranging from quantum effects at nanometer spatial scales and femtosecond timescales, to fluid dynamics at scales familiar from everyday life, and even up to the evolution of galaxies and cosmic structures across billions of years.

There are many excellent books on PDEs. Some focus on their analytical aspects, often specializing in certain subclasses or specific equations. Others address numerical methods for obtaining sufficiently accurate approximations to solutions of particular problems. Additionally, there are books dedicated to the necessary numerical analysis tools that ensure these approximations are robust and credible.

Here, perhaps at the expense of some depth, we propose a comprehensive survey of the different types of PDEs. We will not only study their analytical properties, but also explore their numerical approximations, which will, in turn, help us visualize these properties and behaviors more clearly. To this end, we will delve into fundamental analytical tools that are essential not only for demonstrating the existence, uniqueness, and stability of solutions for a given type of problem, but also for establishing the convergence of the numerical approximations we will be producing.

Ultimately, the aim of this book is to provide a balanced understanding of both the theory and practical techniques for solving PDEs. By combining analytical and numerical approaches, we seek to equip the reader with the tools necessary for addressing real-world problems and advancing their study of these powerful equations.

## Contents

The course is organized in units. Each unit pairs an analytical part with a numerical one, and comes with a homework sheet and one or more computational labs. The [schedule](/schedule/) gives the detailed list of topics for each class. The lectures of the 2025 course were recorded; each unit links its videos in the order they were given, and the whole series is in the [ICTP-SAIFR playlist](https://www.youtube.com/playlist?list=PLg0_ydgtbHGGg0iafVpY92N7GJVBhiECc).

**Getting started.** [Julia tutorial](/labs/Tutorial_Julia_español/) _(notebooks in Spanish)_.

1. **Topology and linear algebra**
   - Lectures (video): [Linear algebra I](https://www.youtube.com/watch?v=qSVHNrRf5Y8) · [Linear algebra II](https://www.youtube.com/watch?v=lYR6_7CZFsY) · [Topology I](https://www.youtube.com/watch?v=G3u74E_MswA) · [Topology II](https://www.youtube.com/watch?v=9oZgS9gyQ-Y) · [Lab 1 review](https://www.youtube.com/watch?v=Iz8DRL1He5I) · [Topology homework discussion](https://www.youtube.com/watch?v=T-2NbGdLrOk)
   - Notes: [Topology](/notes/topology/) · Chapter 1 of [_Mathematical Methods of Physics_ (PDF)](https://github.com/reula/libro_metodos/blob/master/Current_garamond/book_methods_gar.pdf)
   - [Homework 1: Linear Algebra](/homework/01/) · [Homework 2: Topology](/homework/02/)
   - [Lab 1: The logistic map](/labs/01/)
2. **Functional analysis and Fourier theory**
   - Lectures (video): [Infinite-dimensional vector spaces I](https://www.youtube.com/watch?v=tQuTIrmwgPk) · [II](https://www.youtube.com/watch?v=W4vbUtcTdHI) · [III](https://www.youtube.com/watch?v=wtrqjGktfG8) · [Weak convergence and compactness](https://www.youtube.com/watch?v=TTTDVOtxLlc)
   - Notes (PDF): [Normed vector space completeness](https://gitlab.com/oreula/pde/-/blob/master/Apuntes_varios/Banach/completitud.pdf) · [Duality and basic facts about operators](https://gitlab.com/oreula/pde/-/blob/master/Apuntes_varios/Duality/duality.pdf) · [Sobolev inequalities](https://gitlab.com/oreula/pde/-/blob/master/Apuntes_varios/Sobolev/Continuos_Sobolev.pdf) · [Sobolev compact embeddings](https://gitlab.com/oreula/pde/-/blob/master/Apuntes_varios/Sobolev/Compact_Embedings.pdf)
   - [Homework 3: Functional Analysis](/homework/03/) · [Homework 4: Fourier Analysis](/homework/04/)
3. **Ordinary differential equations: analytical and numerical studies**
   - Lectures (video): [ODEs: numerical approximations](https://www.youtube.com/watch?v=sTNZg5C1wqo) · [ODEs: analytical](https://www.youtube.com/watch?v=Xw_tf9kZD-k) · [ODEs: numerical I](https://www.youtube.com/watch?v=WpvLIV91jq0) · [II](https://www.youtube.com/watch?v=3MWDM8x78J0) · [III](https://www.youtube.com/watch?v=zcp0mzqWWmE)
   - Notes: [Ordinary differential equations](/notes/lecture05/) _(notebook, in English and Spanish)_ · [Auto-oscillations](/notes/lecture05/#auto-oscillations)
   - Notes (PDF): [ODE](https://gitlab.com/oreula/pde/-/blob/master/Apuntes_varios/ODES/ODES.pdf) · [ODE fundamental theorem using Euler's method](https://gitlab.com/oreula/pde/-/blob/master/Apuntes_varios/ODES/ODE_Fundamental_Euler.pdf) · [ODE: introduction to numerics](https://gitlab.com/oreula/pde/-/blob/master/Apuntes_varios/ODES/ODEs_Numerico_intro.pdf) · [ODE: one-step methods](https://gitlab.com/oreula/pde/-/blob/master/Apuntes_varios/ODES/ODE_one_step.pdf)
   - [Homework 5: Ordinary Differential Equations](/homework/05/)
   - [Lab 2: Ordinary differential equations](/labs/02/) · [Stability regions](/labs/02-sr/) _(supplementary)_
4. **Evolution equations: the periodic case**
   - Lectures (video): [The Cauchy problem and PDE classification](https://www.youtube.com/watch?v=CxdFN8v8mR4) · [Symmetric hyperbolic systems](https://www.youtube.com/watch?v=z0HoARLZ_t0) · [Finite differences](https://www.youtube.com/watch?v=VjxntqaY1O8) · [The wave equation with the method of lines](https://www.youtube.com/watch?v=QXAN4_3sxOI) · [Energy estimates](https://www.youtube.com/watch?v=Y2Qn_bi_9CY) · [Weak existence for symmetric hyperbolic systems](https://www.youtube.com/watch?v=R27-WvVYgWk) · [Lab 3 discussion](https://www.youtube.com/watch?v=_zOsk_VHr1k)
   - Notes (PDF): [Energy estimates](https://gitlab.com/oreula/pde/-/blob/master/Apuntes_varios/Hiperbolicity/Energy-Estimates.pdf) · [Weak existence for hyperbolic systems](https://gitlab.com/oreula/pde/-/blob/master/Apuntes_varios/Hiperbolicity/Existencia_debil_SH.pdf) · [Finite differences](https://gitlab.com/oreula/pde/-/blob/master/Apuntes_varios/Finite_Diferences/Finite_Differences.pdf) · [Discrete Sobolev inequalities](https://gitlab.com/oreula/pde/-/blob/master/Apuntes_varios/Sobolev/Discrete_Sobolev.pdf) · [Stability, consistency and convergence](https://gitlab.com/oreula/pde/-/blob/master/Apuntes_varios/Stab-Cons-Conv/Stability_Consistency_Convergence.pdf)
   - [Homework 6: Hyperbolic Equations](/homework/06/)
   - [Lab 3: Hyperbolic equations](/labs/03/) · [The wave equation](/labs/03-we/) _(supplementary)_
5. **Evolution equations: boundary conditions**
   - Lectures (video): [Boundary value problems I](https://www.youtube.com/watch?v=RbnV2AsDdBM) · [Solving the wave equation](https://www.youtube.com/watch?v=bMWEr2PIJLg) · [Boundary value problems II](https://www.youtube.com/watch?v=so63vOzzk-Q) · [Penalty methods](https://www.youtube.com/watch?v=DJggIcBBn10) · [Lab 4 presentation](https://www.youtube.com/watch?v=MEdZ1-sflVo) · [Solving Lab 4](https://www.youtube.com/watch?v=gUuE_7ONxag)
   - [Homework 7: Boundary Values](/homework/07/)
   - [Lab 4: Boundary conditions using SAT](/labs/04/) · [The SAT method](/labs/04-SAT/) _(supplementary)_
6. **Other evolution equations: parabolic and Schrödinger**
   - Lectures (video): [Heat equation: introduction](https://www.youtube.com/watch?v=Itt1ZTUtAok) · [Heat equation: energy estimates](https://www.youtube.com/watch?v=OWgUC6646E8) · [Parabolic equations II](https://www.youtube.com/watch?v=TGPXf_MUyEY) · [Parabolic equations III](https://www.youtube.com/watch?v=rsZaK-EdVDk) · [Evolution problems with finite elements](https://www.youtube.com/watch?v=3Hdq63MUV-A)
   - [Homework 9: Parabolic Equations](/homework/09/)
   - [Lab 5: Parabolic equations](/labs/05/)
   - [Lab 8: Evolution problems with finite elements](/labs/08-Evol/)
7. **Non-linear theory, weak solutions and shocks**
   - Lectures (video): [Shocks and other weak solutions](https://www.youtube.com/watch?v=iGCv0gC6CUw) · [Numerical schemes for conservation laws I](https://www.youtube.com/watch?v=rrQksW5LAwY) · [II](https://www.youtube.com/watch?v=2MIbz7_0p6g)
   - [Homework 8: Shocks](/homework/08/)
   - [Lab 6: Conservative schemes](/labs/06/) · [Conservative schemes](/labs/06-CS/) · [Auxiliary functions](/labs/06-SU/) _(supplementary)_
8. **Stationary equations: elliptic problems and finite elements**
   - Lectures (video): [Elliptic equations](https://www.youtube.com/watch?v=SkPRvsH5zCo) · [Spectral theorem](https://www.youtube.com/watch?v=cFw_A38zTYo) · [Elliptic equations with finite differences I](https://www.youtube.com/watch?v=1xpI4Fdlumg) · [II](https://www.youtube.com/watch?v=hJp8OknADJs) · [III](https://www.youtube.com/watch?v=VBklPcIs83Q) · [Finite elements](https://www.youtube.com/watch?v=jxBKcr4z0C8) · [Stability, inf-sup and the Galerkin problem](https://www.youtube.com/watch?v=xrFvV2CFDUE) · [Implementing finite elements with Gridap I](https://www.youtube.com/watch?v=XOQKglrLu4g) · [II](https://www.youtube.com/watch?v=Lm1YBJtnGhQ) · [Finite element approximation theory](https://www.youtube.com/watch?v=pIfE0EFHAkc) · [Gridap tutorials and quantum mechanics](https://www.youtube.com/watch?v=DnI0VY-Q928) · [Using Gridap (Daniela Stauber)](https://www.youtube.com/watch?v=1rVjRLcEUpQ) · [Eigenvalues and eigenvectors of self-adjoint operators](https://www.youtube.com/watch?v=oe1buftX2BI) · [A posteriori errors and grid adaptivity](https://www.youtube.com/watch?v=oj92PpeSxCU)
   - Notes (PDF): [Elliptic theory](https://gitlab.com/oreula/pde/-/blob/master/Apuntes_varios/Ellipticity/Eliptic_theory.pdf) · [Notes on finite elements](https://gitlab.com/oreula/pde/-/blob/master/Apuntes_varios/FiniteElements/Finite_Elements_English.pdf) · [Notas sobre elementos finitos](https://gitlab.com/oreula/pde/-/blob/master/Apuntes_varios/FiniteElements/intro_FEL.pdf) _(in Spanish)_ · [Saddle point systems](https://gitlab.com/oreula/pde/-/blob/master/Apuntes_varios/Saddle-Points/Saddle_points.pdf) · [Conjugate methods](https://gitlab.com/oreula/pde/-/blob/master/Apuntes_varios/ConjugateGradient/CG_reula.pdf)
   - [Homework 10: Elliptic Equations](/homework/10/)
   - [Lab 7: Finite elements](/labs/07/) · [Poisson example](/labs/07-PE/) · [Calculating capacitances](/labs/07-CAP/) _(supplementary)_
   - [Lab 9: Eigenvalue problems](/labs/09-Eigen/)
9. **Further topics: hyperbolic systems and constraints**
   - Lectures (video): [Strongly hyperbolic systems](https://www.youtube.com/watch?v=d9m-TJ_4DRY) · [Hyperbolic systems with constraints I](https://www.youtube.com/watch?v=d1HLi3sgnPc) · [II](https://www.youtube.com/watch?v=MGmkXIcFwl0)
   - Notes (PDF): [Geometrical optics for first-order hyperbolic systems](https://gitlab.com/oreula/pde/-/blob/master/Apuntes_varios/Geometrical_optics/geometrical_optics.pdf) · [Constraint dissipation](https://gitlab.com/oreula/pde/-/blob/master/Apuntes_varios/Divergence_cleaning/Constraint_Dissipation.pdf) · [Divergence cleaning](https://gitlab.com/oreula/pde/-/blob/master/Apuntes_varios/Divergence_cleaning/divergence_cleaning.pdf)

See also the [bibliography](/bibliography/).
