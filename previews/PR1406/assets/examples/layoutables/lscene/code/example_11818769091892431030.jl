# This file was generated, do not modify it. # hide
__result = begin # hide
  
using GLMakie
GLMakie.activate!()

fig = Figure()

lscene = LScene(fig[1, 1], scenekw = (camera = cam3d!,))

# now you can plot into lscene like you're used to
meshscatter!(lscene, randn(100, 3))
fig

  end # hide
  save(joinpath(@OUTPUT, "example_11818769091892431030.png"), __result) # hide
  
  nothing # hide