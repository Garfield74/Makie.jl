# This file was generated, do not modify it. # hide
__result = begin # hide
  
f = Figure()
linesegments!(Axis(f[1,1]), 1:10, Nanosecond.(round.(LinRange(0, 4599800000000, 10))))
f

  end # hide
  save(joinpath(@OUTPUT, "example_3884967503575985375.png"), __result) # hide
  
  nothing # hide