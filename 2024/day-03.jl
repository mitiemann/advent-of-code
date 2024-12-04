### A Pluto.jl notebook ###
# v0.20.3

using Markdown
using InteractiveUtils

# ╔═╡ bc69f208-b1be-11ef-3717-a7dc40f55551
md"# Advent of Code - Day 03"

# ╔═╡ 10151854-e09e-4de0-a103-18c9041e4371
md"## Part 1"

# ╔═╡ 8028a763-e87d-4ffc-b8e9-6a750edf9c03
begin
	f = open("day-03-input.txt","r")
	lines = readlines(f)
	close(f)
	lines
end

# ╔═╡ 51c8a5cf-11c4-4e05-a2bb-bf4e3ec60b0d
lines[1]

# ╔═╡ 8f5cd07b-e860-4cb0-9a7f-0e161547d4b4
re = r"mul\((\d{1,3})\,(\d{1,3})\)"

# ╔═╡ b9c4ab81-dbf8-4584-8eb1-e04e9875fed4
em = eachmatch(re, lines[1])

# ╔═╡ 599a3d93-d68f-455a-b386-c98c5d0068a5
sum([parse(Int,m[1])*parse(Int,m[2]) for m in em])

# ╔═╡ 966c5ac5-0921-441a-a18f-a72bc475469d
linevalue(l) = sum([parse(Int,m[1]) * parse(Int,m[2]) for m in eachmatch(re, l)])

# ╔═╡ 22085387-a884-4b80-9833-832a88797e4b
linevalue(lines[1])

# ╔═╡ bfefdcda-ff37-418d-980b-e9032248857b
sum([linevalue(l) for l in lines])

# ╔═╡ dda27eb6-5dad-4e18-b45e-07c9aaf29456
md"## Part 2"

# ╔═╡ 3f9d4ad5-cbf1-46b3-bc3f-8b1a5631bb13
dore = r"do(?!n\'t)\(\)"

# ╔═╡ ddeb56e5-9a5d-4e50-aa67-7d7a716bedf5
match(dore, lines[1])

# ╔═╡ 2539953c-0f61-48e2-a3a6-010e84b4115a
[m.offset for m in eachmatch(dore, lines[1])]

# ╔═╡ f7d9efb5-f8cb-4960-96a6-c8d78bf2abfd
dontre = r"don\'t\(\)"

# ╔═╡ 38c9ca43-3f7f-4c39-9d0d-cbf9e34659dd
[m.offset for m in eachmatch(dontre, lines[1])]

# ╔═╡ Cell order:
# ╟─bc69f208-b1be-11ef-3717-a7dc40f55551
# ╟─10151854-e09e-4de0-a103-18c9041e4371
# ╠═8028a763-e87d-4ffc-b8e9-6a750edf9c03
# ╠═51c8a5cf-11c4-4e05-a2bb-bf4e3ec60b0d
# ╠═8f5cd07b-e860-4cb0-9a7f-0e161547d4b4
# ╠═b9c4ab81-dbf8-4584-8eb1-e04e9875fed4
# ╠═599a3d93-d68f-455a-b386-c98c5d0068a5
# ╠═966c5ac5-0921-441a-a18f-a72bc475469d
# ╠═22085387-a884-4b80-9833-832a88797e4b
# ╠═bfefdcda-ff37-418d-980b-e9032248857b
# ╟─dda27eb6-5dad-4e18-b45e-07c9aaf29456
# ╠═3f9d4ad5-cbf1-46b3-bc3f-8b1a5631bb13
# ╠═ddeb56e5-9a5d-4e50-aa67-7d7a716bedf5
# ╠═2539953c-0f61-48e2-a3a6-010e84b4115a
# ╠═f7d9efb5-f8cb-4960-96a6-c8d78bf2abfd
# ╠═38c9ca43-3f7f-4c39-9d0d-cbf9e34659dd
