### A Pluto.jl notebook ###
# v0.20.3

using Markdown
using InteractiveUtils

# ╔═╡ a24faa61-6c42-436b-9a15-97050093e149
using CSV

# ╔═╡ f0356796-36e3-42a2-a842-b4ba3be285d9
using InvertedIndices

# ╔═╡ af46b806-b1b7-11ef-1fbe-83108f02687a
md"# Advent of Code - Day 02"

# ╔═╡ b9ea0860-2126-42f2-98db-b74a7010399f
md"## Part 1"

# ╔═╡ cf7ee3c9-40a4-4cd0-9ec9-1d30aeb4c605
strlines = begin
	f = open("day-02-input.txt", "r")
	strlines = readlines(f)
	close(f)
	strlines
end

# ╔═╡ 93e2b65c-9468-4819-8486-2b01e86ecfa2
lines = [[parse(Int,s) for s in eachsplit(str)] for str in strlines]

# ╔═╡ 807e8703-c527-4b63-8652-9a59f63068d4
safefun(l) = all(i -> 0 < i < 4, l) || all(i -> -4 < i < 0, l)

# ╔═╡ 8d7ee9f7-39f5-41d6-b627-8b640dcb18fa
safe = [safefun(diff(l)) for l in lines]

# ╔═╡ 3a80376c-0415-4e77-9428-10a4fc296b25
sum(safe)

# ╔═╡ 5ce298c0-856b-4c1f-8e0d-b3d6b5a6f107
md"## Part 2"

# ╔═╡ fa91d662-ab9f-4eff-a374-c6d45097530f
begin
	num = 0
	for l in lines
		for i in eachindex(l)
			dampl = diff(l[Not(i)])
			if safefun(dampl)
				num += 1
				break
			end
		end
	end
	num
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
CSV = "336ed68f-0bac-5ca0-87d4-7b16caf5d00b"
InvertedIndices = "41ab1584-1d38-5bbf-9106-f11c6c58b48f"

[compat]
CSV = "~0.10.15"
InvertedIndices = "~1.3.0"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.10.7"
manifest_format = "2.0"
project_hash = "ad3c66760622b3b573bd0ba82566ff06f44afa0a"

[[deps.CSV]]
deps = ["CodecZlib", "Dates", "FilePathsBase", "InlineStrings", "Mmap", "Parsers", "PooledArrays", "PrecompileTools", "SentinelArrays", "Tables", "Unicode", "WeakRefStrings", "WorkerUtilities"]
git-tree-sha1 = "deddd8725e5e1cc49ee205a1964256043720a6c3"
uuid = "336ed68f-0bac-5ca0-87d4-7b16caf5d00b"
version = "0.10.15"

[[deps.CodecZlib]]
deps = ["TranscodingStreams", "Zlib_jll"]
git-tree-sha1 = "bce6804e5e6044c6daab27bb533d1295e4a2e759"
uuid = "944b1d66-785c-5afd-91f1-9de20f533193"
version = "0.7.6"

[[deps.Compat]]
deps = ["TOML", "UUIDs"]
git-tree-sha1 = "8ae8d32e09f0dcf42a36b90d4e17f5dd2e4c4215"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "4.16.0"

    [deps.Compat.extensions]
    CompatLinearAlgebraExt = "LinearAlgebra"

    [deps.Compat.weakdeps]
    Dates = "ade2ca70-3891-5945-98fb-dc099432e06a"
    LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.DataAPI]]
git-tree-sha1 = "abe83f3a2f1b857aac70ef8b269080af17764bbe"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.16.0"

[[deps.DataValueInterfaces]]
git-tree-sha1 = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6"
uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464"
version = "1.0.0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.FilePathsBase]]
deps = ["Compat", "Dates"]
git-tree-sha1 = "7878ff7172a8e6beedd1dea14bd27c3c6340d361"
uuid = "48062228-2e41-5def-b9a4-89aafe57970f"
version = "0.9.22"

    [deps.FilePathsBase.extensions]
    FilePathsBaseMmapExt = "Mmap"
    FilePathsBaseTestExt = "Test"

    [deps.FilePathsBase.weakdeps]
    Mmap = "a63ad114-7e13-5084-954f-fe012c677804"
    Test = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.Future]]
deps = ["Random"]
uuid = "9fa8497b-333b-5362-9e8d-4d0656e87820"

[[deps.InlineStrings]]
git-tree-sha1 = "45521d31238e87ee9f9732561bfee12d4eebd52d"
uuid = "842dd82b-1e85-43dc-bf29-5d0ee9dffc48"
version = "1.4.2"

    [deps.InlineStrings.extensions]
    ArrowTypesExt = "ArrowTypes"
    ParsersExt = "Parsers"

    [deps.InlineStrings.weakdeps]
    ArrowTypes = "31f734f8-188a-4ce0-8406-c8a06bd891cd"
    Parsers = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"

[[deps.InvertedIndices]]
git-tree-sha1 = "0dc7b50b8d436461be01300fd8cd45aa0274b038"
uuid = "41ab1584-1d38-5bbf-9106-f11c6c58b48f"
version = "1.3.0"

[[deps.IteratorInterfaceExtensions]]
git-tree-sha1 = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856"
uuid = "82899510-4779-5014-852e-03e436cf321d"
version = "1.0.0"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.OrderedCollections]]
git-tree-sha1 = "12f1439c4f986bb868acda6ea33ebc78e19b95ad"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.7.0"

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "8489905bcdbcfac64d1daa51ca07c0d8f0283821"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.8.1"

[[deps.PooledArrays]]
deps = ["DataAPI", "Future"]
git-tree-sha1 = "36d8b4b899628fb92c2749eb488d884a926614d3"
uuid = "2dfb63ee-cc39-5dd5-95bd-886bf059d720"
version = "1.4.3"

[[deps.PrecompileTools]]
deps = ["Preferences"]
git-tree-sha1 = "5aa36f7049a63a1528fe8f7c3f2113413ffd4e1f"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.2.1"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "9306f6085165d270f7e3db02af26a400d580f5c6"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.4.3"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.Random]]
deps = ["SHA"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.SentinelArrays]]
deps = ["Dates", "Random"]
git-tree-sha1 = "d0553ce4031a081cc42387a9b9c8441b7d99f32d"
uuid = "91c51154-3ec4-41a3-a24f-3f23e20d615c"
version = "1.4.7"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.TableTraits]]
deps = ["IteratorInterfaceExtensions"]
git-tree-sha1 = "c06b2f539df1c6efa794486abfb6ed2022561a39"
uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c"
version = "1.0.1"

[[deps.Tables]]
deps = ["DataAPI", "DataValueInterfaces", "IteratorInterfaceExtensions", "OrderedCollections", "TableTraits"]
git-tree-sha1 = "598cd7c1f68d1e205689b1c2fe65a9f85846f297"
uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c"
version = "1.12.0"

[[deps.TranscodingStreams]]
git-tree-sha1 = "0c45878dcfdcfa8480052b6ab162cdd138781742"
uuid = "3bb67fe8-82b1-5028-8e26-92a6c54297fa"
version = "0.11.3"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.WeakRefStrings]]
deps = ["DataAPI", "InlineStrings", "Parsers"]
git-tree-sha1 = "b1be2855ed9ed8eac54e5caff2afcdb442d52c23"
uuid = "ea10d353-3f73-51f8-a26c-33c1cb351aa5"
version = "1.4.2"

[[deps.WorkerUtilities]]
git-tree-sha1 = "cd1659ba0d57b71a464a29e64dbc67cfe83d54e7"
uuid = "76eceee3-57b5-4d4a-8e66-0e911cebbf60"
version = "1.6.1"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.13+1"
"""

# ╔═╡ Cell order:
# ╟─af46b806-b1b7-11ef-1fbe-83108f02687a
# ╟─b9ea0860-2126-42f2-98db-b74a7010399f
# ╠═a24faa61-6c42-436b-9a15-97050093e149
# ╠═cf7ee3c9-40a4-4cd0-9ec9-1d30aeb4c605
# ╠═93e2b65c-9468-4819-8486-2b01e86ecfa2
# ╠═807e8703-c527-4b63-8652-9a59f63068d4
# ╠═8d7ee9f7-39f5-41d6-b627-8b640dcb18fa
# ╠═3a80376c-0415-4e77-9428-10a4fc296b25
# ╠═5ce298c0-856b-4c1f-8e0d-b3d6b5a6f107
# ╠═f0356796-36e3-42a2-a842-b4ba3be285d9
# ╠═fa91d662-ab9f-4eff-a374-c6d45097530f
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
