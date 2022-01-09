# This file was generated, do not modify it. # hide
__result = begin # hide
  
f = Figure()
scatter!(Axis(f[1,1]), u"cm" .* (1:10), u"d" .* rand(10) .* 10)
f

  end # hide
  save(joinpath(@OUTPUT, "example_16900815662805675286.png"), __result) # hide
  
  nothing # hide