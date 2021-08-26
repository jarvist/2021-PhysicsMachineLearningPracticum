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

### The Julia programming language

"""

# ╔═╡ 994b9710-fe61-4fe4-aaa1-5a6263c76904
md"""
### Pluto.jl

[Pluto.jl](https://github.com/fonsp/Pluto.jl) is a reactive computational notebook, which specifically works with Julia. This webpage is actually a Pluto notebook. This is conceptually similar to a Mathematica workbook or a Jupyter notebook. 

Jupyter notebooks have become dominant in data science and machine learning but they have two drawbacks: they posess internal state (so you can e.g. accidentally delete or corrupt a key part of an analysis and not notice until you try and re-run days or years later), and are not directly runnable as Python, Julia or R scripts (so you often end up developing a prototype in a notebook, then copy + pasting code elsewhere). Pluto avoids these problems by consistently re-running any dependent calculations when changes are made (this is what 'reactive' means). This also means you can have cells in any order. The save format of the notebook is a plain Julia text file, with the cells re-ordered so that the computation progresses from top to bottom.

As Pluto only operates with Julia, it takes advantage of the modern dependency and package infrastructure to make runs entirely reproducible. Libraries can be managed by Pluto itself, with the specific version (down to the git sha) registered. 
"""

# ╔═╡ d16d57b0-7aac-466c-99fa-14387cdaa007
md"""
## § 1 - Computational & physical introduction
### Computational statistical mechanics
### The partition function
### Maximum entropy learning: Boltzmann inversion
"""

# ╔═╡ a0436b6b-ac8d-469a-8f1e-0799ab2e8c0b
md"""
## § 2 - Gaussian processes
### Modelling potential energy surfaces in physical matter

Notebook: [1D_PotentialEnergySurface.jl](1D_PotentialEnergySurface.html)
"""

# ╔═╡ 24477c10-2e69-4e77-bba0-436b3479dd93
md"""
## § 3 - An introduction to neural networks
### Setting weights by hand
### Automatic differentiation (AD)
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
# ╠═994b9710-fe61-4fe4-aaa1-5a6263c76904
# ╟─d16d57b0-7aac-466c-99fa-14387cdaa007
# ╠═a0436b6b-ac8d-469a-8f1e-0799ab2e8c0b
# ╟─24477c10-2e69-4e77-bba0-436b3479dd93
# ╟─1eac8a7b-bf29-400b-b776-af03efa62c7e
# ╟─74e091b2-3c14-4353-8506-5342b9d18aea
