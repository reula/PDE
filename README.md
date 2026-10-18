## Course Notes on Partial Differential Equations: Analytical and Numerical Methods

This course was offered during several years at the Facultad de Matemática, Astronomía, Física y Computación,
Universidad Nacional de Córdoba, Argentina.  
The experience gained will be reflected in these notes with the hope that they will serve future students, 
as well as instructors who may find interesting material for their classes.

The course aims to address the study of partial differential equations in a mixed manner, 
utilizing both the abstract tools of functional analysis on one hand, and numerical analysis techniques on the 
other to find good approximations to concrete problems. These two types of tools, initially very disparate, 
have many points of contact, and their combination allows us to achieve stable and robust approximations to 
practical problems. They serve as frameworks for securely structuring our codes, enabling us to successfully 
tackle highly complex issues while keeping the underlying theory under control.

These notes will include not only theoretical content but also notebooks with code, problem guides for each 
chapter, and some videos featuring parts of the classes. We will likely include notes and videos of final 
projects presented in previous years, as each was an original work and can serve as complex examples for 
exploring similar problems.

The notebooks are created in Julia. In the first year, we had a lot of material in Python, but upon starting with 
Julia, we found it to be a much better-suited language for the course’s intentions. 
Julia combines the ease of prototyping found in Python with the speed of compiled languages. 
Naturally, the notebooks are simple enough to be easily understood without a deep mastery of Julia, and can 
also be converted to Python or any other desired language if needed.

### Access to the [book](https://reula.github.io/PDE/)

## On editing the book

The book is built with the [Franklin.jl](https://github.com/tlienart/Franklin.jl) package using the [TufteCSS](https://tlienart.github.io/FranklinTemplates.jl/templates/tufte/) template.

In the [Franklin.jl documentation](https://franklinjl.org/) you can find a quick start guide on how to render the site locally.
In the [template website](https://tlienart.github.io/FranklinTemplates.jl/templates/tufte/) you can find some tips on how to write in markdown and how to use the Franklin.jl package.

### Things to know when adding material

- The notebooks in `weave/` are **executed** by the CI (`weaveall()` in `utils.jl`, using the `PDE2025` environment) and their output is inserted in the pages. They must run from their own folder: any mesh or helper file they read must be in that folder of `weave/`. The CI has no display, so plotting code that uses `GLMakie` should switch to `CairoMakie` when `ENV["CI"] == "true"` (see `weave/lab07/Poisson_example.ipynb`).
- Franklin does not copy files whose name ends in `utils.jl` (that name is reserved for the site's own `utils.jl`), so such files cannot be downloaded from the site. Use another name (e.g. `shocks_tools.jl`).
- The homework pages 1–3 are generated from the markdown cells of their notebooks: when a sheet changes, change the notebook and regenerate the page so the two do not drift apart.
