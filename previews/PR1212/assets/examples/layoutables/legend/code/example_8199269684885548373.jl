# This file was generated, do not modify it. # hide
__result = begin # hide
  
using CairoMakie

f = Figure()

Axis(f[1, 1])

xs = 0:0.1:10
lins = [lines!(xs, sin.(xs .+ 3v), color = RGBf0(v, 0, 1-v)) for v in 0:0.1:1]

Legend(f[1, 2], lins, string.(1:length(lins)), nbanks = 3)

f

  end # hide
  save(joinpath(@OUTPUT, "example_8199269684885548373.png"), __result) # hide
  
  nothing # hide