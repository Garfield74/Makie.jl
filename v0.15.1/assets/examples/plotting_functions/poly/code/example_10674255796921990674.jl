# This file was generated, do not modify it. # hide
__result = begin # hide
  
using CairoMakie
CairoMakie.activate!() # hide
using Makie.GeometryBasics
Makie.inline!(true) # hide

f = Figure()
Axis(f[1, 1])

# vector of polygons
ps = [Polygon(rand(Point2f0, 3) .+ Point2f0(i, j))
    for i in 1:5 for j in 1:10]

poly!(ps, color = rand(RGBf0, length(ps)),
    axis = (backgroundcolor = :gray15,))

f

  end # hide
  save(joinpath(@OUTPUT, "example_10674255796921990674.png"), __result) # hide
  
  nothing # hide