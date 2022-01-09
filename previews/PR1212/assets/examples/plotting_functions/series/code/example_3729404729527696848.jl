# This file was generated, do not modify it. # hide
__result = begin # hide
  
using CairoMakie
CairoMakie.activate!() # hide
Makie.inline!(true) # hide

fig, ax, sp = series(rand(4, 10), labels=["label $i" for i in 1:4])
axislegend(ax)
fig

  end # hide
  save(joinpath(@OUTPUT, "example_3729404729527696848.png"), __result) # hide
  
  nothing # hide