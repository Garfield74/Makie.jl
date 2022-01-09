# This file was generated, do not modify it. # hide
__result = begin # hide
  
series([Point2f0.(1:10, rand(10)) for i in 1:4], markersize=5, color=:Set1)

  end # hide
  save(joinpath(@OUTPUT, "example_15251793183710726321.png"), __result) # hide
  
  nothing # hide