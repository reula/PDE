## Partial Differential Equations:  Analytical and numerical tools.

### Oscar Reula Jan. 11, 2024


#### Basics:

Numerical techniques play a pivotal role in addressing differential equations, serving as a foundational tool across various domains, including physics, astrophysics, and several practical technological fields. In the contemporary landscape, it is imperative to recognize their significance as an integral component of a researcher's professional toolkit within these disciplines. Unfortunately, the current state of undergraduate and graduate curricula falls short in adequately incorporating this essential knowledge. The deficiency extends to both numerical and analytical aspects. Numerical courses typically remain at an elementary level, while analytical courses often hark back to methods predating the most significant advancements in the field. Emphasis is often placed on analytical methods, which may exhibit dubious convergence, and limited to situations where closed-form solutions are attainable—usually cases marked by high symmetry.

Regrettably, these conventional approaches prove insufficient for tackling the complexities of contemporary scientific problems. The majority of modern challenges are encapsulated by partial differential equations, governing phenomena at scales ranging from the nanoscopic to the cosmic. A comprehensive education in numerical techniques, equipped to handle such intricate problems, is indispensable for researchers navigating the multifaceted landscapes of present-day science.

#### Objectives:

The objectives of the course are to enable students to become familiar with the foundations of the theory of the most common types of differential equations (ordinary, elliptic, hyperbolic, and parabolic), understand their diverse behaviors, and numerically approximate their solutions, thereby validating these behaviors. Throughout the course, students will be required to work with codes of varying sophistication, either modifying existing ones or creating new ones. They will employ these codes to solve different types of problems, including boundary and initial value problems, among others. Additionally, they will analyze the solutions they find, visualizing them, identifying extrema, monitoring their energies and other conserved quantities, and scrutinizing numerical convergence.

#### Methodology:

The course is structured with approximately 2 hours dedicated to theoretical foundations, complemented by an additional 2 hours focused on practical exercises or coding. The coding component will be conducted using Julia, involving relatively straightforward modifications of notebooks that are already operational, albeit for simpler or different examples.


### Program: 

1. Mathematical Tools.
   1. Basics of Topology.
   2. Finite-dimensional Vector Spaces.
   3. Fundamental Concepts in Geometry.
   4. Banach and Hilbert Spaces.
   5. Sobolev Spaces and Distributions.
   
2. Ordinary Differential Equations.
   1. Examples and Definitions. Reduction to First Order.
   2. Geometric Interpretation of First-order Systems.
   3. Constant Coefficients.
   4. Stability. Lyapunov's Theorem.
   5. Numerical Methods and Their Stability.
   6. Utilizing Julia Libraries. Assignment 1.
   
3. Classification of Partial Differential Equation Systems.
   1. Reduction to First Order.
   2. Well-Posed Concept. Examples and Counterexamples.
   3. Zeroth Order is Not Relevant.
   4. Hyperbolic, Parabolic, and Elliptic Systems.
   5. Constant Coefficient Systems.
   
4. Quasi-linear Hyperbolic Systems.
   1. Local Existence and Uniqueness. Local Stability.
   2. Causality.
   3. Boundary Conditions.
   4. Numerical Methods.
   5. Method of Lines.
   6. Finite Differences. Assignments 2 and 3.
   7. Interfaces.
   8. Shock Generation. Assignment 4.

5. Parabolic Systems.
   1. Local Existence and Uniqueness. Stability.
   2. Boundary Conditions.
   3. Numerical Methods.
   4. Interfaces. Assignment 5.

6. Elliptic Systems.
   1. Existence, Uniqueness, and Smoothness. Stability.
   2. Generalized Boundary Conditions.
   3. Numerical Methods: Finite Elements.
   4. Introduction to Gridap. Assignment 6.
  



