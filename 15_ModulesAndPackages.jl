workspace()
push!(LOAD_PATH, "/Users/eddie/Documents/Programming/Julia")
using Volume

println(LOAD_PATH)
workspace()

import Volume

println(Volume.sphere_volume(1))

workspace()
importall Volume

println(sphere_volume(1))
