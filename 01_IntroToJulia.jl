### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ 2149c97e-064f-11ec-1ef7-afe0b97656c1
md"# Introduction to Julia"

# ╔═╡ 93e630d2-e592-4866-95b7-59d5eb41a814
md"## Computer as calculator"

# ╔═╡ f5135419-d4e8-4e2a-8c23-9d7975bc94f2
1+1

# ╔═╡ 6cdfa8bf-51c7-4a41-9d3d-c225446525a0
0.1+0.9

# ╔═╡ 36079999-be25-42bc-b44f-0e645d4db61c
1/10 + 9/10 == 10/10

# ╔═╡ 532dca1e-f1a9-4c11-80de-8daa06583c6a
0.1+0.2

# ╔═╡ ec12b8e1-d4f1-4f8c-9967-e6342e296a84
1/10 + 2/10 == 3/10

# ╔═╡ 314f1213-cfde-49a9-ab44-981e4092fd26
1//10

# ╔═╡ 6a6fed81-4707-46e1-bd33-4f5f1de48b48
1//10 + 2//10 == 3//10

# ╔═╡ b360dfb1-d643-4502-8602-3d024558947d
md"## Fibonacci"

# ╔═╡ c1be0350-0409-4483-b48a-1a12b979ea8a
#Evidently floating point numbers on a computer are horribl complicated. So let's go back a step and writ something using only integers. This behaviour should be more reliable!

# ╔═╡ 1a30b69e-0920-489c-a66e-dfbcc7fc3ab3
# Let's write a little function to calculate factorials, recursively

function fac(n)
	if n<1
		return 1
	else
		return n*fac(n-1)
	end
end

# ╔═╡ 7dc274d5-d712-4c26-a832-07f477fe1e9b
fac(1)

# ╔═╡ 6596cc84-d3cb-4856-8b4b-d797c0f958a4
fac(2)

# ╔═╡ c727da0d-0366-4f17-ad6c-d7b3b75117f9
fac(3)

# ╔═╡ 1e5e53e1-cca4-44ba-ac99-3eedad6332b1
# OK, this is getting laborious. Let's run it 20 times over!
fac.(1:40)

# ╔═╡ 8704355b-2dd2-4aa1-b735-669d3b6bd655
map(fac,1:40)

# ╔═╡ 0a672165-e54a-4b95-9cf3-ad7430680d3b
# But wait a second! What's happening at that last digit?
fac(39), fac(40)

# ╔═╡ 6edb0cef-dfa2-4853-917a-1b8a953c34de
# This sequence should never have gone negative! What has gone wrong?

# ╔═╡ 89de604d-d552-4002-ba04-4054374e9bc5
# Let's have a look at the actual computer code
@code_lowered fac(1)

# ╔═╡ 9fba26f7-82cd-401f-9dc0-a5d9e1945790
my_code_llvm(args...; kwargs...) = sprint() do io
   code_llvm(io, args...; kwargs...)
end

# ╔═╡ dc0e3237-1e37-4004-8084-47b361c3fc3b
Text(my_code_llvm(fac, (Int,)))

# ╔═╡ Cell order:
# ╠═2149c97e-064f-11ec-1ef7-afe0b97656c1
# ╠═93e630d2-e592-4866-95b7-59d5eb41a814
# ╠═f5135419-d4e8-4e2a-8c23-9d7975bc94f2
# ╠═6cdfa8bf-51c7-4a41-9d3d-c225446525a0
# ╠═36079999-be25-42bc-b44f-0e645d4db61c
# ╠═532dca1e-f1a9-4c11-80de-8daa06583c6a
# ╠═ec12b8e1-d4f1-4f8c-9967-e6342e296a84
# ╠═314f1213-cfde-49a9-ab44-981e4092fd26
# ╠═6a6fed81-4707-46e1-bd33-4f5f1de48b48
# ╠═b360dfb1-d643-4502-8602-3d024558947d
# ╠═c1be0350-0409-4483-b48a-1a12b979ea8a
# ╠═1a30b69e-0920-489c-a66e-dfbcc7fc3ab3
# ╠═7dc274d5-d712-4c26-a832-07f477fe1e9b
# ╠═6596cc84-d3cb-4856-8b4b-d797c0f958a4
# ╠═c727da0d-0366-4f17-ad6c-d7b3b75117f9
# ╠═1e5e53e1-cca4-44ba-ac99-3eedad6332b1
# ╠═8704355b-2dd2-4aa1-b735-669d3b6bd655
# ╠═0a672165-e54a-4b95-9cf3-ad7430680d3b
# ╠═6edb0cef-dfa2-4853-917a-1b8a953c34de
# ╠═89de604d-d552-4002-ba04-4054374e9bc5
# ╠═9fba26f7-82cd-401f-9dc0-a5d9e1945790
# ╠═dc0e3237-1e37-4004-8084-47b361c3fc3b
