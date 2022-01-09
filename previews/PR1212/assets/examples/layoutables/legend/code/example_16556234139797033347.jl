# This file was generated, do not modify it. # hide
__result = begin # hide
  
using CairoMakie

f = Figure()

traces = cumsum(randn(10, 5), dims = 1)

for (i, (merge, unique)) in enumerate(
        Iterators.product([false, true], [false true]))

    ax = Axis(f[fldmod1(i, 2)...],
        title = "merge = $merge, unique = $unique")

    for trace in eachcol(traces)
        lines!(trace, label = "single", color = (:black, 0.2))
    end

    mu = vec(sum(traces, dims = 2) ./ 5)
    lines!(mu, label = "mean")
    scatter!(mu, label = "mean")

    axislegend(ax, merge = merge, unique = unique)

end

f

  end # hide
  save(joinpath(@OUTPUT, "example_16556234139797033347.png"), __result) # hide
  
  nothing # hide