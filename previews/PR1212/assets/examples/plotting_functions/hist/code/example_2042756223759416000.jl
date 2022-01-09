# This file was generated, do not modify it. # hide
__result = begin # hide
  
using CairoMakie
CairoMakie.activate!()
hist(data, normalization = :pdf, bar_labels = :values,
     label_formatter=x-> round(x, digits=2), label_size = 15,
     strokewidth = 0.5, strokecolor = (:black, 0.5), color = :values)

  end # hide
  save(joinpath(@OUTPUT, "example_2042756223759416000.png"), __result) # hide
  
  nothing # hide