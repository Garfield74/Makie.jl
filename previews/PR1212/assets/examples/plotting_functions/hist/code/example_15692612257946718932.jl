# This file was generated, do not modify it. # hide
__result = begin # hide
  
fig = Figure()
ax = Axis(fig[1, 1])
for i in 1:5
     hist!(ax, randn(1000), scale_to=-0.6, offset=i, direction=:x)
end
fig

  end # hide
  save(joinpath(@OUTPUT, "example_15692612257946718932.png"), __result) # hide
  
  nothing # hide