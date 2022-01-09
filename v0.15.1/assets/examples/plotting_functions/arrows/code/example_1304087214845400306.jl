# This file was generated, do not modify it. # hide
__result = begin # hide
  
using GLMakie
GLMakie.activate!() # hide
Makie.inline!(true) # hide
using LinearAlgebra

ps = [Point3f0(x, y, z) for x in -5:2:5 for y in -5:2:5 for z in -5:2:5]
ns = map(p -> 0.1 * Vec3f0(p[2], p[3], p[1]), ps)
lengths = norm.(ns)
arrows(
    ps, ns, fxaa=true, # turn on anti-aliasing
    color=lengths,
    linewidth = 0.1, arrowsize = Vec3f0(0.3, 0.3, 0.4),
    align = :center, axis=(type=Axis3,)
)

  end # hide
  save(joinpath(@OUTPUT, "example_1304087214845400306.png"), __result) # hide
  
  nothing # hide