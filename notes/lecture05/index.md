+++
title = "Notes: Ordinary differential equations"
weave = false
+++

# Ordinary differential equations: numerical methods

Lecture notes in the form of a Julia notebook:

- English: [download the notebook](ODES_en.ipynb) · [view it online with its outputs](https://nbviewer.org/github/reula/PDE/blob/main/notes/lecture05/ODES_en.ipynb)
- Spanish original: [download the notebook](ODES.ipynb) · [view it online with its outputs](https://nbviewer.org/github/reula/PDE/blob/main/notes/lecture05/ODES.ipynb)

Contents: the explicit Euler method, its local and global errors and its instability for oscillatory problems; Taylor methods and the leapfrog scheme, with its spurious mode; the midpoint and Heun methods and the general two-stage Runge–Kutta family; the classical fourth-order Runge–Kutta method and embedded methods with step-size control; reduction of higher-order equations, such as the harmonic oscillator, to first-order systems, and phase portraits. The English version adds a section on one-step methods: truncation error, error propagation, error control with Richardson extrapolation, and stability regions.

## Auto-oscillations

A short notebook on self-sustained oscillations of systems close to a harmonic oscillator: the change of energy over one unperturbed orbit, limit cycles and their stability, with a numerical example integrated with RK4.

- [Download the notebook](auto_oscillations.ipynb) · [view it online with its outputs](https://nbviewer.org/github/reula/PDE/blob/main/notes/lecture05/auto_oscillations.ipynb)
