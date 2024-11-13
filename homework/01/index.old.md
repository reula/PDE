## Homework 1: Linear Algebra
## Due date: 
### Student Name:


**Exercise 1. Vectors**

a.- Show that given a vector $\vec{v}$ and a basis $\{\vec{e_i}\}$ for $i=1, \ldots ,n$, there exists a unique linear combination of the basis elements that determines it. That is, if $\vec{v} = \sum_i v^i \vec{e_i}$ and $\vec{v} = \sum_i \tilde{v}^i \vec{e_i}$, then $v^i = \tilde{v}^i$ for all $i=1, \ldots ,n$.

b.- Given two bases, $\{\vec{e_i}\}$ and $\{\vec{\tilde{e}_i}\}$, we can express the elements of one in terms of the other,
$\vec{\tilde{e}j} = \sum_i P{j}{}^i \vec{e_i}, \;\;\;\;\;\; \vec{e_i} = \sum_l R_{i}{}^l \vec{\tilde{e}_l}.$

Show that $R_{i}{}^l = P^{-1}_{i}{}^l$.

c.- Let $S$ be a finite set, $S = {s_1, s_2, \dots, s_n}$. Find a basis for the vector space of all functions from $S$ to $\mathbb{R}$. Determine the dimension of this space.
Show that the dimension of $V$ is unique, meaning it does not depend on the basis used to define it.



**Exercise 2. Dual spaces**


If $\{\vec{e}_i\}$ for $i=1,\ldots,n$ is a basis of vector space $V$, meaning a linearly independent set of vectors that span $V$, we can define $n$ elements of $V^*$ (called co-vectors) by the relation 

$$
\vec{\theta^i}(\vec{e}j) = \delta^i{;j}. 
$$
That is, we define the action of $\vec{\theta^i}$ on the $\{\vec{e_j}\}$ as in the equation above and then extend its action to any element of $V$ by writing this element in the basis $\{\vec{e}_i\}$ and using the fact that the action must be linear.

It can be easily seen that any $\rho \in V'$ can be obtained as a linear combination of the co-vectors $\{\vec{\theta^j}\}$, $j=1,\ldots,n$ and that these are linearly independent, therefore they form a basis and thus the dimension of $V'$ is also $n$.

a.- Show that $V^*$ is a vector space and that the ${\vec{\theta^i}}$ indeed form a basis.

b.- Show that if $\vec{v} = \sum_{i=1}^{n} v^i \vec{e}_i$ then,
$$
v^i = \vec{\theta^i}(\vec{v}). 
$$


c.- Let $V$ be the space of functions from a set with a finite number of elements, $n$, to the real numbers. Let a basis be given by:

$$
\vec{e}_i (a) := \left(
    \begin{array}{cl} 1 & \text{if } a \text{ is the } i\text{-th element} \\ 
    0 & \text{otherwise} \end{array} \right. 
$$

Find the corresponding co-basis of its dual space.

**Exercise 3. Tensors**

Let $\mathbf{\varepsilon}$ be a completely antisimmetric tensor with $n$ entries on a vector space of dimention $n$, not identically zero, and 
$\{\vec{e}_i\}$ any set of $n$ vectors. 

a.- Show that they form a bases if and only if
$$
\mathbf{\varepsilon} (\vec{e_1},\ldots, \vec{e_n})\neq 0.
$$

b.- Let $\mathbf{ A}$ be any element of type ${1 \choose 1}$, 
$$
\vec{u}\in V, \;\; \vec{ v}^*\in V^* \to \mathbf{A}(\vec{ u},\vec{v}^*)\in \mathbb{R}.
$$
This tensor is also a linear map from $V \to V$, indeed,
$\mathbf{A}(\vec{ u},\cdot)$ is also a vector, since identifying $V$ with $V^{**}$, is the unique vector that takes any covector $\vec{\omega} \in V^*$ and gives the number $\mathbf{A}(\vec{e},\mathbf{\omega})$. 
Among the linear maps from $V \to V$ there is the identity map. What is the identity map as an element of ${1 \choose 1}$?

c.- Let $\{\vec{e}_i\}$ be any base of $V$ and let
$\vec{ a}_i$ the vectors $\vec{A}(\vec{e_i},\;\;)$, then, 
$$
\mathbf{\varepsilon}(\vec{a_1},\ldots,\vec{a_n})=\mathbf{\varepsilon}(\mathbf{A}(\vec{e_1},\;\;),\ldots ,\mathbf{A}(\vec{e_n},\;\;))
$$ 
is also totally antisymmetric in the $\{\vec{e}_i\}$ and therefore,

$$
\mathbf {\varepsilon}(\mathbf{A}(\vec{e_1},\;\;),\ldots ,\mathbf{A}(\vec{e_n},\;\;)) \propto \mathbf{\varepsilon}(\vec{e_1}. \ldots, \vec{e_n}).
$$

The propertionality constant is called the *determinant* of the map $\mathbf{A}$, 

$$
\mathbf{\varepsilon}(\mathbf{A}(\vec{e_1},\;\;),\ldots ,\mathbf{A}(\vec{e_n},\;\;))  =: \det(\mathbf{A}) \mathbf{\varepsilon}(\vec{e_1}. \ldots, \vec{e_n}).
$$
Show that this constant does not depends on the particular base used to define it. Thus it is a function from the linear maps of $V$ to the reals.


d.- Let $\mathbf{A}$, and $\mathbf{B}$ be to linear maps from $V$ into itself, then we can define the product of them as: 
$\mathbf{A}\cdot \mathbf{B} (\vec{v}):=\mathbf{A}(\mathbf{B}(\vec{v}))$. 
Show that $\det(\mathbf{A}\mathbf{B})=\det(\mathbf{A})\cdot \det(\mathbf{B})$.
**Exercise 4. Quotient spaces**

Let $V$ be the vector space of continuos functions in $\mathbb{R}$ and let $W$ the subset of $V$ consisting on all the functions that vanish in the interval $[0,1]$. 

a.- Show that $W$ is a vector subspace of $V$.

b.- Consider the quotient space $V/W$, with which other space can we associate it?


**Exercise 5. Norms**

Let $V = \mathbb{R}^2$, and $||(x,y)|| = \max{|x|,|y|}$. What is the norm induced in $V'$?
**Exercise 6. Invariant Subspaces**

Find the invariant subspaces of the following linear maps on $\mathbb{R}^2$

$$
A_1 := \left[ 
    \begin{array}{cc}
    0 & 2 \\
    1 & 0
    \end{array}
    \right]
$$

$$
A_2 := \left[ 
    \begin{array}{cc}
    1 & 2 \\
    0 & 2
    \end{array}
    \right]
$$

$$
A_3 := \left[ 
    \begin{array}{cc}
    1 & 2 \\
    0 & 1
    \end{array}
    \right]
$$



