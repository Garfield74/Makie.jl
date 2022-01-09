# This file was generated, do not modify it. # hide
__result = begin # hide
  
Box(f[1, 1], color = (:red, 0.2), strokewidth = 0)
f

  end # hide
  save(joinpath(@OUTPUT, "aspect_tutorial_example.png"), __result) # hide
  save(joinpath(@OUTPUT, "aspect_tutorial_example.svg"), __result) # hide
  nothing # hide