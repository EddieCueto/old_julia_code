workspace()
push!(LOAD_PATH, ".")
using Volume

println(LOAD_PATH)
workspace()

import Volume

println(Volume.sphere_volume(1))

workspace()
importall Volume

println(sphere_volume(1))
