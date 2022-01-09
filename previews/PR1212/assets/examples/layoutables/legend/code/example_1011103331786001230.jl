# This file was generated, do not modify it. # hide
__result = begin # hide
  
using CairoMakie

f = Figure()

Axis(f[1, 1])

xs = 0:0.5:10
ys = sin.(xs)
lin = lines!(xs, ys, color = :blue)
sca = scatter!(xs, ys, color = :red)
sca2 = scatter!(xs, ys .+ 0.5, color = 1:length(xs), marker = :rect)

Legend(f[1, 2],
    [lin, sca, [lin, sca], sca2],
    ["a line", "some dots", "both together", "rect markers"])

f

  end # hide
  save(joinpath(@OUTPUT, "example_1011103331786001230.png"), __result) # hide
  
  nothing # hide