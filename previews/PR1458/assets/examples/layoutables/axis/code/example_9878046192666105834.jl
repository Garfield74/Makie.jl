# This file was generated, do not modify it. # hide
__result = begin # hide
  
using CairoMakie
CairoMakie.activate!() # hide
Makie.inline!(true) # hide

hist(randn(100) ./ 4 .+ 5,
    strokewidth = 1,
    strokecolor = :black,
    axis = (
        xtrimspine = true,
        ytrimspine = true,
        topspinevisible = false,
        rightspinevisible = false,
        title = "Trimmed spines",
        xgridvisible = false,
        ygridvisible = false,
    )
)

  end # hide
  save(joinpath(@OUTPUT, "example_9878046192666105834.png"), __result) # hide
  save(joinpath(@OUTPUT, "example_9878046192666105834.svg"), __result) # hide
  nothing # hide