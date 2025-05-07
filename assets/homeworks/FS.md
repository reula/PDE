## Homework 3: Functional Analysis

## Due date: 

### Student Name:

**Exercise 1. Normed Spaces**

##### Examples:

a. The normed vector space $l^2$ is the space of
infinite sequences with the norm
$\|\{x_i\}\|_2=\sqrt{\sum_{i=1}^{\infty} x_i^2} < \infty $.

 
b. The normed vector space $l^{\infty}$ is the space of
infinite sequences with the norm
$\|\{x_i\}\|_{\infty}=sup_{i}\{|x_i|\}$. That is, the space of all
bounded sequences.

c. The normed vector space $C[a,b]$ is the space of
continuous functions with the norm $\|f\|_c=sup_{x\in [a,b]}\{|f(x)|\}$.
That is, the space of bounded continuous functions on $[a,b]$.

1. Show that the norms defined in the previous example are indeed norms.


2. Show that there are sequences in $l^{\infty}$ that do not belong to
$l^2$. Hint: Find one of them.


3. Show that $\|\{x_i\}\|_n := \sqrt[n]{\sum_{i=1}^{\infty} |x_i|^n}_{\stackrel{
\textstyle \longrightarrow}{\scriptstyle n \to \infty}} sup_i \{|x_i|\}$.

4. Convince yourself that, unlike the finite-dimensional case, an infinite-dimensional normed space is not necessarily complete. To illustrate this, consider the normed vector space $l_0^{\infty}$, which is a subspace of $l^{\infty}$ consisting of all bounded sequences with only a finite number of non-zero terms. Each sequence $\{x_i\}_n= (1,1/2,1/3,\ldots,1/n,0,0,\ldots) $ is in
$l_0^{\infty}$, the sequence of sequences $\{\{x_i\}_n\}$ is Cauchy 
$$
\left( \|\{x_i\}_{m}-\{x_i\}_n\|_{\infty}=\frac{1}{n+1}_{\stackrel{\textstyle\longrightarrow}
{\scriptstyle n\to\infty}} 0 \right)
$$ 
and converges to the sequence $\{x_i\}_{\infty}=( 1,1/2,
1/3 ,\ldots)\in l^{\infty}$ **which does not belong to** $l_0^{\infty}$. Therefore,
$l_0^{\infty}$ is not complete.

5. See that in $l^2$ the unit ball is not compact. 
Hint: find an infinite sequence in the unit ball that has no accumulation point.


**Exercise 2. Hilbert Spaces**
The following identity for norms arising from a scalar product is called 
*the parallelogram law*,
$$
\|\vec{x} + \vec{y}\|^2 + \|\vec{x} - \vec{y}\|^2  = 
                     2(\|\vec{x}\|^2 + \|\vec{y}\|^2). 
$$

Show that a norm satisfies it if and only if it comes from an
inner product. 
Hint: Use the so-called polarization identity to define an 
inner product from the norm,
\begin{equation*}
  \langle\vec{x}, \vec{y}\rangle = \frac{1}{4}\{
               [\|\vec{x} + \vec{y}\|^2 - \|\vec{x} - \vec{y}\|^2]
              -\Im [\|\vec{x} + \Im \vec{y}\|^2 - \|\vec{x} - \Im \vec{y}\|^2]\}
\end{equation*}

**Exercise 3. Orthonormal Bases**
Use Gram-Schmidt to obtain an orthonormal basis from
the monomials 
$$
1,\;x,\;x^2,\;\ldots,x^n,\ldots,
$$
with respect to the Hilbert spaces obtained from the following
inner products:
1. $\langle f,g \rangle = \int^1_{-1} \bar fg \;dx$ (In this case you will obtain the
Legendre polynomials.)
2. $\langle f,g \rangle = \int^{\infty}_{-\infty} \bar f g e^{-x^2} \;dx$
(In this case you will obtain the Hermite polynomials.)

3. $\langle f,g \rangle = \int^{\infty}_0 \bar f g e^{-x}\; dx$
(In this case you will obtain the Laguerre polynomials.)

 
**Exercise 4 Linear maps and dual spaces**
1. Let $\phi:H \to \Complex$ be a linear map. Show that $\phi$ is continuous
if and only if it is bounded.
2. Show that the map $I:C[a,b] \to \Re$ given by 
\begin{equation*}
  I(f) := \int_a^b f(x)dx,
\end{equation*}
is a linear and continuous map.
3. Let $V$ be a finite-dimensional space and let $\{\vec{u}_i\},\;\;i=1..n$
be a basis and $\{\vec{\theta}^i\},\;\;i=1..n$ the corresponding dual basis.
Let $\vec{x} = \sum_{i=1}^n x^i \vec{u}_i$ be any vector in $V$ and
$\vec{\omega} = \sum_{i=1}^n \omega_i \vec{\theta}^i$ 
be any linear functional,
i.e., an element of $V'$. 
Consider the norm in $V$
\begin{equation*}
  \|\vec{x}\|_p := (\sum_{i=1}^n |x^i|^p)^{\frac{1}{p}}.
\end{equation*}
See that this is a norm and prove that
the norm induced in $V'$ by this is given by,
\begin{equation*}
  \|\vec{\omega}\|_q := (\sum_{i=1}^n |\omega_i|^q)^{\frac{1}{q}},
\end{equation*}
where 
\begin{equation*}
  \frac{1}{p} + \frac{1}{q} = 1\;\;\;\;\;\;\; (p,q \geq 1);
\end{equation*}
Hint: Express $\vec{\omega}(\vec{x})$ in components with respect to the 
given bases/dual bases and then use (prove) Holder's inequality:
\begin{equation*}
  |\sum_{i=1}^{n} x^i \omega_i | \leq 
        (\sum_{i=1}^n |x^i|^p)^{\frac{1}{p}} 
        (\sum_{i=1}^n |\omega_i|^q)^{\frac{1}{q}}.
\end{equation*}




4. **Optional!** Let $c_0$ be the space of sequences 
$\{x\} = (x_1,x_2, \dots)$
converging to zero ($\lim_{n \to \infty} x_n = 0$) with the norm
\begin{equation*}
  \|\{x\}\|_{c_0} := \sup_{i} \{|x_i|\}.
\end{equation*}
Prove that the dual of the space $c_0$ is the space $l_1$ of absolutely summable sequences
$\{\omega\}= (\omega_1,\omega_2, \dots)$ with the norm
\begin{equation*}
  \|\{\omega\}\|_{l_1} := \sum_{i=1}^{\infty} |\omega_i|.
\end{equation*}
Hints: 
Note that given an element of $l_1$, $\{\omega\}=(\omega_1,\omega_2,\dots)$,
we have a linear functional given by,
\begin{equation*}
  \vec{\omega}(\{x\}) := \sum_{i=1}^{\infty} x_i \omega_i.
\end{equation*}
Prove that this satisfies 
\begin{equation*}
  \|\vec{\omega}\| \leq \|\{\omega\}\|_{l_1}.
\end{equation*}
Then find an element of norm equal to or less than one in $c_0$ 
and with its help see that 
\begin{equation*}
  \|\vec{\omega}\| \geq \|\{\omega\}\|_{l_1}.
\end{equation*}
From which it is concluded that the norms are the same, that is, the map that sends $l_1 \to c_0'$ is an isometry.
**Warning!** one is tempted to use as the element above $x_n = sign(y_n)$ but that vector might not be an element of $c_0$!, so a limiting procedure must be used.
It only remains to see that for each element of the dual of $c_0$, $\vec{\omega}$,
there exists an element of $l_1$, $\{\omega\}=(\omega_1,\omega_2,\dots)$ such that 
$\vec{\omega}(\{x\}) = \sum_{i=1}^{\infty} x_i \omega_i$ holds. 
To do this, construct a basis of $c_0$ and the respective basis of its dual.
Note: at some point, you will have to use that the considered linear functionals
are continuous.
## Below is a conversation with Deep Seek about the above problem. 

It illustrates how to get some information from it, but also that makes mistakes. The process of learning something is more complicated than just the process of getting the information. One has to formulate questions and attep to answer them. Produce and carry on ejamples and exercises, mostly simple ones. 
## >> of what sequence space is l_1 the dual?

The space $ \ell_1 $ is the **dual of $ c_0 $**, the space of sequences converging to zero (equipped with the supremum norm).  

### Key Result:
$$
c_0^* \cong \ell_1,
$$
where $ \cong $ denotes an **isometric isomorphism**.

### Explanation:
1. **The space $ c_0 $** consists of all real (or complex) sequences $ x = (x_n) $ such that:
   $$
   \lim_{n \to \infty} x_n = 0,
   $$
   with the norm:
   $$
   \|x\|_{\infty} = \sup_{n} |x_n|.
   $$

2. **Dual space $ c_0^* $**:
   - Every continuous linear functional $ f $ on $ c_0 $ can be represented uniquely by a sequence $ y = (y_n) \in \ell_1 $, acting as:
     $$
     f(x) = \sum_{n=1}^{\infty} x_n y_n \quad \text{for all } x \in c_0.
     $$
   - The norm of $ f $ is given by:
     $$
     \|f\| = \sum_{n=1}^{\infty} |y_n| = \|y\|_1.
     $$

### Why not $ \ell_\infty $?
- While $ \ell_1^* \cong \ell_\infty $, the reverse is **not** true: $ \ell_\infty^* $ is much larger than $ \ell_1 $.
- Instead, $ \ell_1 $ is the dual of the **smaller** space $ c_0 $.

### Intuition:
- $ c_0 $ is a natural subspace of $ \ell_\infty $ (all sequences that "vanish at infinity").
- The dual pairing $ \ell_1 = c_0^* $ reflects that $ \ell_1 $-sequences can "integrate" against $ c_0 $-sequences, but not against general $ \ell_\infty $-sequences (where finitely additive measures are needed).

### Summary:
- $ \ell_1 $ is the dual of $ c_0 $.
- $ \ell_1 $ is **not** the dual of $ \ell_\infty $ (instead, $ \ell_\infty^* $ is much larger and more complicated). 

This is a key example in functional analysis where duality pairs a sequence space with a natural subspace of its double dual.


## >> produce a proof of this

Here’s a **detailed proof** that the dual space of $ c_0 $ is isometrically isomorphic to $ \ell_1 $, i.e.,  
$$
c_0^* \cong \ell_1.
$$  

---

### **Step 1: Define the Duality Mapping**  
Consider the pairing $ \langle \cdot, \cdot \rangle : \ell_1 \times c_0 \to \mathbb{R} $ (or $ \mathbb{C} $) given by:  
$$
\langle y, x \rangle = \sum_{n=1}^\infty y_n x_n, \quad \text{where } y \in \ell_1, \, x \in c_0.
$$  
We must show that:  
1. Every $ y \in \ell_1 $ induces a bounded linear functional on $ c_0 $.  
2. Every bounded linear functional on $ c_0 $ arises this way.  
3. The map $ y \mapsto f_y $ (where $ f_y(x) = \langle y, x \rangle $) is an isometric isomorphism.  

---

### **Step 2: $ \ell_1 $ Embeds into $ c_0^* $ (Boundedness)**  
Let $ y \in \ell_1 $. Then for any $ x \in c_0 $,  
$$
| \langle y, x \rangle | = \left| \sum_{n=1}^\infty y_n x_n \right| \leq \sum_{n=1}^\infty |y_n| |x_n| \leq \|x\|_\infty \sum_{n=1}^\infty |y_n| = \|x\|_\infty \|y\|_1.
$$  
Thus, $ f_y $ is bounded with $ \|f_y\| \leq \|y\|_1 $.  

**Sharpness of the bound**: Take $ x = (\text{sgn}(y_n)) $, where $ \text{sgn}(y_n) = y_n / |y_n| $ if $ y_n \neq 0 $ and $ 0 $ otherwise. Then $ x \in c_0 $ (since $ y_n \to 0 $, as $ y \in \ell_1 $), $ \|x\|_\infty \leq 1 $, and  
$$
f_y(x) = \sum_{n=1}^\infty |y_n| = \|y\|_1.
$$  
Thus, $ \|f_y\| = \|y\|_1 $, proving the embedding is **isometric**.  

---

### **Step 3: Every Functional in $ c_0^* $ Comes from $ \ell_1 $ (Surjectivity)**  
Let $ f \in c_0^* $. Define $ y_n = f(e_n) $, where $ e_n $ is the $ n $-th standard basis vector ($ e_n(k) = \delta_{nk} $).  

**Claim**: $ y = (y_n) \in \ell_1 $, and $ f(x) = \sum_{n=1}^\infty y_n x_n $ for all $ x \in c_0 $.  

**Proof**:  
1. For any $ N \in \mathbb{N} $, define $ x^{(N)} = (\text{sgn}(y_1), \dots, \text{sgn}(y_N), 0, 0, \dots) \in c_0 $. Then,  
   $$
   f(x^{(N)}) = \sum_{n=1}^N |y_n| \leq \|f\| \|x^{(N)}\|_\infty = \|f\|.
   $$  
   Since $ N $ is arbitrary, $ \sum_{n=1}^\infty |y_n| \leq \|f\| < \infty $, so $ y \in \ell_1 $.  

2. For any $ x \in c_0 $, approximate $ x $ by its first $ N $ coordinates:  
   $$
   x^{(N)} = (x_1, \dots, x_N, 0, 0, \dots) \in c_0.
   $$  
   Then $ \|x - x^{(N)}\|_\infty = \sup_{k > N} |x_k| \to 0 $ as $ N \to \infty $ (since $ x \in c_0 $). By continuity of $ f $,  
   $$
   f(x) = \lim_{N \to \infty} f(x^{(N)}) = \lim_{N \to \infty} \sum_{n=1}^N y_n x_n = \sum_{n=1}^\infty y_n x_n.
   $$  

Thus, $ f $ corresponds to $ y \in \ell_1 $.  

---

### **Step 4: Isomorphism and Isometry**  
The map $ \Phi : \ell_1 \to c_0^* $ defined by $ \Phi(y) = f_y $ is:  
- **Linear**: Clear from the definition.  
- **Injective**: If $ f_y = 0 $, then $ y_n = f_y(e_n) = 0 $ for all $ n $.  
- **Surjective**: By Step 3, every $ f \in c_0^* $ is $ f_y $ for some $ y \in \ell_1 $.  
- **Isometric**: $ \|f_y\| = \|y\|_1 $ (Step 2).  

Hence, $ \Phi $ is an **isometric isomorphism**, proving $ c_0^* \cong \ell_1 $.  

---

### **Conclusion**  
The dual of $ c_0 $ is $ \ell_1 $, with the duality given by the natural pairing $ \langle y, x \rangle = \sum_{n=1}^\infty y_n x_n $. This contrasts with $ \ell_\infty^* $, which is much larger than $ \ell_1 $.  

### **Key Takeaways**  
1. Every $ y \in \ell_1 $ defines a bounded linear functional on $ c_0 $.  
2. Every bounded linear functional on $ c_0 $ arises this way.  
3. The correspondence is norm-preserving ($ \|f_y\| = \|y\|_1 $).  

This is a fundamental result in functional analysis, illustrating how duality interacts with sequence spaces.


## >> I don't see why x = (sign(y_n)) is in c_0 for y in l_1


You're absolutely right to question this! The argument I gave was **incorrect** because $ x = (\text{sgn}(y_n)) $ is **not** necessarily in $ c_0 $ for an arbitrary $ y \in \ell_1 $. (For example, if $ y = (1, 1/2, 1/3, \dots) $, then $ x = (1, 1, 1, \dots) $, which does not converge to $ 0 $.)  

### **Revised Proof of $ \|f_y\| = \|y\|_1 $**  
We need a different way to show that the operator norm $ \|f_y\| $ equals $ \|y\|_1 $. Here’s the corrected approach:  

1. **For any $ x \in c_0 $ with $ \|x\|_\infty \leq 1 $:**  
   $$
   |f_y(x)| = \left| \sum_{n=1}^\infty y_n x_n \right| \leq \sum_{n=1}^\infty |y_n| |x_n| \leq \|x\|_\infty \sum_{n=1}^\infty |y_n| \leq \|y\|_1.
   $$  
   Thus, $ \|f_y\| \leq \|y\|_1 $.  

2. **Constructing a sequence $ x^{(N)} \in c_0 $ to approximate the supremum:**  
   For a given $ y \in \ell_1 $, define the **truncated sign sequence**:  
   $$
   x^{(N)}_n = \begin{cases} 
   \text{sgn}(y_n) & \text{if } n \leq N, \\
   0 & \text{if } n > N.
   \end{cases}
   $$  
   Then $ x^{(N)} \in c_0 $ (since it’s finitely supported), and $ \|x^{(N)}\|_\infty \leq 1 $.  

   Now,  
   $$
   f_y(x^{(N)}) = \sum_{n=1}^N y_n \text{sgn}(y_n) = \sum_{n=1}^N |y_n|.
   $$  
   Taking $ N \to \infty $, we get:  
   $$
   \|f_y\| \geq \sup_N f_y(x^{(N)}) = \sum_{n=1}^\infty |y_n| = \|y\|_1.
   $$  

   Combining with the earlier inequality, $ \|f_y\| = \|y\|_1 $.  

### **Why This Fixes the Issue**  
- The original mistake was assuming $ (\text{sgn}(y_n)) \in c_0 $, which is false in general.  
- The fix uses **finitely supported** sequences $ x^{(N)} $, which **do** belong to $ c_0 $ and approximate the norm.  

### **Final Conclusion**  
The corrected proof shows that:  
1. Every $ y \in \ell_1 $ induces a functional $ f_y \in c_0^* $ with $ \|f_y\| = \|y\|_1 $.  
2. Every functional in $ c_0^* $ arises this way (as previously established).  

Thus, $ c_0^* \cong \ell_1 $ **isometrically**.  

Thanks for catching that error—it’s an important subtlety in duality arguments!