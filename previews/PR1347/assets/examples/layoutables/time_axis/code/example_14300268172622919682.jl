# This file was generated, do not modify it. # hide
__result = begin # hide
  
scatter!(ax, rand(Hour(1):Hour(1):Hour(20), 10), 1:10)
# scatter!(ax, rand(10), 1:10) # should error!
f

  end # hide
  save(joinpath(@OUTPUT, "example_14300268172622919682.png"), __result) # hide
  
  nothing # hide