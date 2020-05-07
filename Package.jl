Pkg.add("Colors")

Pkg.resolve()

Pkg.rm("Colors")

using Colors

c = parse(Colorant, "red")
