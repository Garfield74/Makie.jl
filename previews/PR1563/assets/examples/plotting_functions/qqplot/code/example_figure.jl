# This file was generated, do not modify it. # hide
__result = begin # hide
    using CairoMakie
CairoMakie.activate!() # hide
Makie.inline!(true) # hide

ys = randn(100)

qqnorm(ys)
end # hide
save(joinpath(@OUTPUT, "example_3142817858303104245.png"), __result) # hide

nothing # hide