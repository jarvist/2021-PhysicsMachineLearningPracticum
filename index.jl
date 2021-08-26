### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ 95ef9860-0644-11ec-27d4-57fae0e8614c
md"""
# 2021 MRes in Machine Learning and Big Data in the Physical Sciences
### Jarvist Moore Frost - Practicum
"""

# ╔═╡ 38061db4-9741-44c0-b4bc-4532d8ceea01
md"""
## § 0 - Technical stack

We will use the Julia programming language, and the Pluto reactive notebook in this part of the practicum. 
This [7 minute video](https://www.youtube.com/watch?v=OOjKEgbt8AI) explains how to install them locally. 
"""

# ╔═╡ b56c0674-74a7-484a-b69c-ee27b2574f02
md"""
### The Julia programming language

The Julia programming language grew out of a research project at MIT to write a general purpose language, but with particular strength in scientific computing. They wanted to avoid the 'two language' problem, where initial prototypes were written in higher level languages such as Matlab or Python, but then had to be extensively rewritten in a lower level language such as C or Fortran to achieve the necessary performance for working on production datasets. 

This is achieved by having a very strong type system, and using multiple dispatch and just-in-time (JIT) compiling to build specialised versions of the functions being executed. Julia code can be very fast indeed, but another property is that it can be iteratively improved to make it faster. This speed improvement comes from expert knowledge and understanding of how the language and computer hardware operates, but the language is highly inspective (you can ask it what's going on), and is easy to collaborate on. 

An emergent property of the language is that code is highly composable. By writing a few extra types and providing specialised functions for your new types, you can often use other people's code and libraries for something they had never intended. 

As the language is fairly new (first release 2012), it uses modern software engineering practises, and contains a built in (and first class) package manager. 

Explore some features of Julia in the [0_IntroToJulia.jl](0_IntroToJulia.html) notebook.

The [2012 blog post](https://julialang.org/blog/2012/02/why-we-created-julia/) from the first public release explains much of the initial motivation behind the project. 
"""

# ╔═╡ 994b9710-fe61-4fe4-aaa1-5a6263c76904
md"""
### Pluto.jl

[Pluto.jl](https://github.com/fonsp/Pluto.jl) is a reactive computational notebook, which specifically works with Julia. This webpage is actually a Pluto notebook. This is conceptually similar to a Mathematica workbook or a Jupyter notebook. 

Jupyter notebooks have become dominant in data science and machine learning but they have two drawbacks: they posess internal state (so you can e.g. accidentally delete or corrupt a key part of an analysis and not notice until you try and re-run days or years later), and are not directly runnable as Python, Julia or R scripts (so you often end up developing a prototype in a notebook, then copy + pasting code elsewhere). Pluto avoids these problems by consistently re-running any dependent calculations when changes are made (this is what 'reactive' means). This also means you can have cells in any order. The save format of the notebook is a plain Julia text file, with the cells re-ordered so that the computation progresses from top to bottom. 

There is an informative (and fun! many animated gifs) [talk about the dangers of Jupyter-style notebooks by Joel Grus at the 2018 Jupytercon](https://www.youtube.com/watch?v=7jiPeIFXb6U). (If you are going to use Jupyter notebooks in your future work, a strong recommendation is to not execute cells out of order, and regularly 'restart kernel and run all cells'!)

As Pluto only operates with Julia, it takes advantage of the modern dependency and package infrastructure to make runs entirely reproducible. Libraries can be managed by Pluto itself, with the specific version (down to the git sha) registered. 

The [Pluto talk at the 2020 Juliacon](https://www.youtube.com/watch?v=IAF8DjrQSSk) and the [Pluto talk at the 2021 Juliacon](https://www.youtube.com/watch?v=HiI4jgDyDhY) are a very good introduction to the technology.
"""

# ╔═╡ d16d57b0-7aac-466c-99fa-14387cdaa007
md"""
## § 1 - Computational & physical introduction
### Introduction to Julia

Notebook: [00_IntroToJulia.jl](00_IntroToJulia.html)

### Computational statistical mechanics
### The partition function
### Maximum entropy learning: Boltzmann inversion
"""

# ╔═╡ a0436b6b-ac8d-469a-8f1e-0799ab2e8c0b
md"""
## § 2 - Gaussian processes
### Modelling potential energy surfaces in physical matter

Notebook: [02_GaussianProcessPotentialEnergySurface.jl](02_GaussianProcessPotentialEnergySurface.html)
"""

# ╔═╡ 24477c10-2e69-4e77-bba0-436b3479dd93
md"""
## § 3 - An introduction to neural networks
### Setting weights by hand
### Automatic differentiation (AD)

Notebook: [03_IntroToAutoDiff.jl](03_IntroToAutoDiff.html)

### Back propagation
"""

# ╔═╡ 1eac8a7b-bf29-400b-b776-af03efa62c7e
md"""
## § 4 - Convolutional neural networks
### Identifying phase transitions in the 2D Ising model
"""

# ╔═╡ 74e091b2-3c14-4353-8506-5342b9d18aea
md"""
## § 5 - Graph convolutional neural networks
### Molecules as an atomic graph
"""

# ╔═╡ Cell order:
# ╟─95ef9860-0644-11ec-27d4-57fae0e8614c
# ╟─38061db4-9741-44c0-b4bc-4532d8ceea01
# ╟─b56c0674-74a7-484a-b69c-ee27b2574f02
# ╟─994b9710-fe61-4fe4-aaa1-5a6263c76904
# ╟─d16d57b0-7aac-466c-99fa-14387cdaa007
# ╟─a0436b6b-ac8d-469a-8f1e-0799ab2e8c0b
# ╟─24477c10-2e69-4e77-bba0-436b3479dd93
# ╟─1eac8a7b-bf29-400b-b776-af03efa62c7e
# ╟─74e091b2-3c14-4353-8506-5342b9d18aea
