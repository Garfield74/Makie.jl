# This file was generated, do not modify it. # hide
__result = begin # hide
  
using CairoMakie
CairoMakie.activate!() # hide

set_theme!(backgroundcolor = :gray90)

f = Figure(resolution = (800, 500))
ax = Axis(f[1, 1], aspect = 1)
Colorbar(f[1, 2])
f

  end # hide
  save(joinpath(@OUTPUT, "example_7161082110194571875.png"), __result) # hide
  save(joinpath(@OUTPUT, "example_7161082110194571875.svg"), __result) # hide
  nothing # hide