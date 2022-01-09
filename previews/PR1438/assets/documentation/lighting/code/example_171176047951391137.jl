# This file was generated, do not modify it. # hide
__result = begin # hide
  
using GLMakie
GLMakie.activate!() # hide

xs = -10:0.1:10
ys = -10:0.1:10
zs = [10 * (cos(x) * cos(y)) * (.1 + exp(-(x^2 + y^2 + 1)/10)) for x in xs, y in ys]

fig, ax, pl = surface(xs, ys, zs, colormap = (:white, :white),

    # Light comes from (0, 0, 15), i.e the sphere
    lightposition = Vec3f(0, 0, 15),
    # base light of the plot only illuminates red colors
    ambient = Vec3f(0.3, 0, 0),
    # light from source (sphere) illuminates yellow colors
    diffuse = Vec3f(0.4, 0.4, 0),
    # reflections illuminate blue colors
    specular = Vec3f(0, 0, 1.0),
    # Reflections are sharp
    shininess = 128f0
)
mesh!(ax, Sphere(Point3f(0, 0, 15), 1f0), color=RGBf(1, 0.7, 0.3))
fig

  end # hide
  save(joinpath(@OUTPUT, "example_171176047951391137.png"), __result) # hide
  
  nothing # hide