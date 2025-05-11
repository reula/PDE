## Course Schedule

<table>
  <thead>
    <tr>
      <th>Theory</th>
      <th>Numerical</th>
      <th>Exercises</th>
      <th>Labs</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Topology and Linear Algebra</strong> (Classes 1 and 2)
        <ul>
          <li>Vectors, covectors, tensors, symmetries, complexification</li>
          <li>Quotient spaces</li>
          <li>Norms, induced norms</li>
          <li>Inner product</li>
          <li>Linear maps, invariant subspaces, eigenvalues-eigenvectors, exponentials, adjoint and unitary operators</li>
          <li>Topological Spaces</li>
          <li>Examples, Continuity, Compactness, Sequences, convergence</li>
          <li>Stability of fixed points</li>
        </ul>
      </td>
      <td><strong>Functional Analysis and Fourier Theory</strong> (Classes 3 and 4)
        <ul>
          <li>Basic Elements of Functional Analysis</li>
          <li>Completing a normed space</li>
          <li>Hilbert spaces</li>
          <li>Riesz Representation Theorem</li>
          <li>Sobolev spaces of positive integer indices and the Poincaré-Hardy theorem</li>
          <li>Fourier Series and Sobolev Spaces</li>
          <li>Basic properties of Fourier Series</li>
          <li>Sobolev spaces of real indices, two important theorems</li>
        </ul>
      </td>
      <td>Exercise Sheet 1</td>
      <td>
        <ul>
          <li>Lab 1A: Getting familiar with Julia and its environment</li>
          <li>Lab 1B: The logistic map</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td><strong>Ordinary Differential Equations - Analytical Studies</strong> (Classes 5 and 6)
        <ul>
          <li>Definition, examples, uniqueness, existence</li>
          <li>Reduction to first-order systems</li>
          <li>Geometric interpretation</li>
          <li>First integrals</li>
          <li>Fundamental theorem, dependence on parameters, variational equation</li>
          <li>Linear systems, general solution</li>
          <li>Stability</li>
        </ul>
      </td>
      <td><strong>Ordinary Differential Equations - Numerical Studies</strong> (Classes 7 and 8)
        <ul>
          <li>Defining the problem</li>
          <li>Various approximation methods</li>
          <li>Existence proof using Euler's method</li>
          <li>Stability regions</li>
        </ul>
      </td>
      <td>Exercise Sheet 2</td>
      <td>
        <ul>
          <li>Lab 2A: Solving ordinary differential equations with numerical methods</li>
          <li>Lab 2B: Computing the stability region of some numerical integration schemes</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td><strong>Evolutionary Partial Differential Equations - Analytical Studies</strong> (Classes 9 and 10)
        <ul>
          <li>Examples: advection and Burgers' equation</li>
          <li>The Cauchy problem</li>
          <li>Symmetric-hyperbolic systems: Wave equations, Maxwell's equations, Einstein's equations, etc.</li>
          <li>Propagation cones</li>
          <li>Existence and uniqueness, maximum propagation speed</li>
        </ul>
      </td>
      <td><strong>Evolution Partial Differential Equations - Numerical Studies (Periodic Case)</strong> (Classes 11 and 12)
        <ul>
          <li>Method of lines</li>
          <li>Discretizing space, finite differences</li>
          <li>Discretizing time</li>
          <li>Stability of evolution operators and the CFL condition</li>
        </ul>
      </td>
      <td>Exercise Sheet 3</td>
      <td>
        <ul>
          <li>Lab 3A: Solving a single wave equation in a periodic domain</li>
          <li>Lab 3B: Solving a simple hyperbolic system</li>
        </ul>
      </td>
    </tr>
    <tr>
      <td><strong>Evolutionary Partial Differential Equations</strong> (Classes 13 and 14)
        <ul>
          <li>The initial-boundary-value problem</li>
          <li>Energy estimates with boundaries</li>
        </ul>
      </td>
      <td><strong>Evolution Partial Differential Equations - Numerical Studies (Boundary Conditions)</strong> (Classes 15 and 16)
        <ul>
          <li>Operators satisfying summation by parts</li>
          <li>Applying boundary conditions using penalty methods</li>
        </ul>
      </td>
      <td>Exercise Sheet 4</td>
      <td>Lab 4: Solving the second-order wave equation with boundaries and discontinuous interfaces</td>
    </tr>
    <tr>
      <td><strong>Non-linear Theory</strong> (Classes 17 and 18)
        <ul>
          <li>An example (Burgers equation)</li>
          <li>The general theory</li>
        </ul>
      </td>
      <td><strong>Other Evolutionary Equations</strong> (Classes 19 and 20)
        <ul>
          <li>Parabolic equations (Heat equation)</li>
          <li>Mixed systems (Navier-Stokes)</li>
          <li>Schrödinger equation</li>
        </ul>
      </td>
      <td>Exercise Sheet 5</td>
      <td>Lab 5: Solving the heat equation</td>
    </tr>
    <tr>
      <td><strong>Weak Solutions, Shocks</strong> (Classes 21 and 22)
        <ul>
          <li>Examples</li>
          <li>Juncture conditions</li>
          <li>Propagation Speeds</li>
          <li>Lack of uniqueness</li>
          <li>Entropy conditions</li>
        </ul>
      </td>
      <td><strong>Approximating Weak Solutions</strong> (Classes 23 and 24)
        <ul>
          <li>Lax-Friedrich and Weno algorithms for approximating weak solutions</li>
        </ul>
      </td>
      <td>Exercise Sheet 6</td>
      <td>Lab 6: Solving Burgers equation</td>
    </tr>
    <tr>
      <td><strong>Stationary Partial Differential Equations - Analytical Studies</strong> (Classes 25 and 26)
        <ul>
          <li>The boundary problem</li>
          <li>Ellipticity</li>
          <li>Example: the Laplacian</li>
          <li>Weak existence and uniqueness</li>
          <li>Generalizations</li>
        </ul>
      </td>
      <td><strong>Stationary Partial Differential Equations - Numerical Studies</strong> (Classes 27 and 28)
        <ul>
          <li>Finite element theory</li>
          <li>Solving problems in their weak formulation using Gridap</li>
        </ul>
      </td>
      <td>Exercise Sheet 7</td>
      <td>Lab 7: Solving the Laplacian with Dirichlet boundary conditions</td>
    </tr>
    <tr>
      <td><strong>Further Topics on Hyperbolic Systems</strong> (Classes 29 and 30)
        <ul>
          <li>Strongly Hyperbolic Systems</li>
          <li>Constraints</li>
        </ul>
      </td>
      <td><strong>Further Topics on Stationary Systems</strong> (Classes 31 and 32)
        <ul>
          <li>Lax convergence theorem</li>
          <li>Finite element approximation theory</li>
          <li>Variations, non-elliptic systems (min-max)</li>
        </ul>
      </td>
      <td></td>
      <td></td>
    </tr>
  </tbody>
</table>

</body>
</html>
