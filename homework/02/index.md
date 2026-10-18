+++
title = "Homework 02 Topology"
weave = false
+++

# Homework 2: Topology

- [Click here to download this notebook](Topology.ipynb)

We need $X$ which is our space, and a collection of sets in $X$ which is $τ$ which are defined to be open.

* The finite intersection of open sets must be open
* Any union of open sets must be open
* The empty set and X are open

**Exercise 1.**

Find, for the case of the topology of the real line, an infinite intersection of open sets that is not open.

**Exercise 2.**

a.- Prove that a metric space has a topology *induced* by its metric in the same way as the usual topology of $\mathbb{R}$.

b.- See that $d(x,y)=1$ if $x \neq y$ is a distance. What topology does this distance introduce?

**Exercise 3.**

1.- Let $(X,\|\cdot\|)$ be a normed vector space with distance $d(x,x') = \|x-x'\|$, prove that:

a.- $C^1_x = \{x'| d(x,x') \leq 1 \}$ is closed and is a neighborhood of $x$.

b.- $N^{ϵ}_x =\{x' | d(x,x') < ϵ \}$, $ϵ >0$ is also a neighborhood of $x$.

c.- $Int(N^{ϵ}_x) = N^{ϵ}_x$

d.- $Cl(N^{ϵ}_x) = \{x' | d(x,x') \leq ϵ \}$

e.- $\partial N^{ϵ}_x = \{x' | d(x,x') = ϵ \}$.

2.- Let $(X,\cal{T})$ be a topological space and $A$ a subset of $X$. Prove that:

a.- $A$ is open if and only if every $x \in A$ has a neighborhood contained in $A$.

b.- $A$ is closed if and only if every $x$ in $A^c$ (i.e., not belonging to $A$) has a neighborhood that does not intersect $A$.

3.- Let $(X,\cal{T})$ be a topological space, let $A \subset X$ and $x \in X$. Prove that:

a.- $x \in Int(A)$ if and only if $x$ has a neighborhood contained in $A$.

b.- $x \in Cl(A)$ if and only if every neighborhood of $x$ intersects $A$.

c.- $x \in \partial A$ if and only if every neighborhood of $x$ contains points in $A$ and points in $A^c$.

**Exercise 4.**

Review the proof of the following theorem:

*The map $ϕ:X → Y$ is continuous if and only if it holds that: given any point $x ∈ X$ and any neighborhood $M$ of $ϕ(x)$, there exists a neighborhood $N$ of $x$ such that $ϕ(N) ⊂ M$.*

**Exercise 5.**

Let $ϕ : X → Y$ and $ψ : Y → Z$ be continuous maps, prove that $ψ ∘ ϕ : X → Z$ is also continuous. (Composition of maps preserves continuity.)

**Exercise 6.** (optional)

Prove that compact sets in the real line are closed and bounded.

**Exercise 7.** (optional)

a. Prove that in a Hausdorff space the limit of a convergent sequence is unique.

b. Let $X$ be compact, $Y$ be Hausdorff, and $ϕ: X → Y$ be continuous. Prove that the images of closed sets are closed.

c. Find a counterexample if $Y$ is not Hausdorff.
