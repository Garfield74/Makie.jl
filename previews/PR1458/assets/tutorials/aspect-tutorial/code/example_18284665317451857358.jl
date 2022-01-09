# This file was generated, do not modify it. # hide
__result = begin # hide
  
f = Figure()
for i in 1:5, j in 1:5
    Axis(f[i, j], width = 150, height = 150)
end
f

  end # hide
  save(joinpath(@OUTPUT, "example_18284665317451857358.png"), __result) # hide
  save(joinpath(@OUTPUT, "example_18284665317451857358.svg"), __result) # hide
  nothing # hide