# This file was generated, do not modify it. # hide
__result = begin # hide
  
using CairoMakie, Unitful, Dates
CairoMakie.activate!() # hide
Makie.inline!(true) # hide

f = Figure()
ax = Axis(f[1,1])
scatter!(ax, rand(Second(1):Second(60):Second(20*60), 10), 1:10)
f

  end # hide
  save(joinpath(@OUTPUT, "example_3257847682038384836.png"), __result) # hide
  
  nothing # hide