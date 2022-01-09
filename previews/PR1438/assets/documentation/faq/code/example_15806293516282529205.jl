# This file was generated, do not modify it. # hide
__result = begin # hide
  
using CairoMakie

set_theme!(backgroundcolor = :gray90)

f = Figure(resolution = (800, 600))

for i in 1:3, j in 1:3
    ax = Axis(f[i, j], title = "$i, $j", width = 100, height = 100)
    i < 3 && hidexdecorations!(ax, grid = false)
    j > 1 && hideydecorations!(ax, grid = false)
end

Colorbar(f[1:3, 4])

f

  end # hide
  save(joinpath(@OUTPUT, "example_15806293516282529205.png"), __result) # hide
  save(joinpath(@OUTPUT, "example_15806293516282529205.svg"), __result) # hide
  nothing # hide