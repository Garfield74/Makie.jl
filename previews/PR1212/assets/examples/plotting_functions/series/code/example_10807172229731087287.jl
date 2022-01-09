# This file was generated, do not modify it. # hide
__result = begin # hide
  
series(LinRange(0, 1, 10), rand(4, 10), solid_color=:black)

  end # hide
  save(joinpath(@OUTPUT, "example_10807172229731087287.png"), __result) # hide
  
  nothing # hide