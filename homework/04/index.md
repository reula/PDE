+++
title = "Homework 04 Fourier Spaces"
weave = false
+++

# Homework 4

## Fourier Analysis

**Exercise 1.**

a.- Find the Fourier series of the function $f(x) := x$ in the
interval $[-\pi,\pi]$.

b.- Use Parseval's relation to prove that 
\begin{equation*}
  \sum_{n=1}^{\infty} \frac{1}{n^2} = \pi^2/6
\end{equation*}

**Exercise 2.**

a.- Find the Fourier series of the function $f(x):= e^{sx}$ in the
interval $[-\pi, \pi]$.

b.- Use Parseval's relation to prove that 
\begin{equation*}
  \pi coth(\pi s)/s = \sum_{n=-\infty}^{\infty} \frac{1}{s^2+n^2}
\end{equation*}

**Exercise 3.**

Let $S_n: L^2 \to L^2$ be the map that sends $f \in L^2$ to the partial
Fourier series,
\begin{equation*}
  S_n(f) := \sum_{m=-n}^{n} c_m e^{imx}, \;\;\;\;\;\;\; 
                 c_m:= \frac{1}{2\pi}\langle e^{imx},f(x) \rangle.
\end{equation*}
Show that the $S_n$ are orthogonal projections and that 
$S_n S_m = S_m S_n = S_m$ if $m \leq n$.

**Exercise 4. Use of the Fourier Interpolation**

Compute the Fourier Interpolation of the functions: $|x|$, $sign(x)$, and $sin(x)+ 3cos(x)$ and  $e^{sx}$ (for $s= 1, 3, 3i$) and plot it along the Fourier series coefficients. Below is an example:

```julia
using Pkg
Pkg.instantiate()
using FFTW
using Plots

N = 64
f(x) = x
#f(x) = x*sign(x)
#f(x) = exp(2*x)
xi = -π
xf = π
xv = [xi + (xf-xi)*(i-1)/N for i in 1:N]
fv = f.(xv)
plot(xv,fv, label="f(x)=x")
```
