#push!(LOAD_PATH,".")

include("./Volume.jl")
#using Volume
using Test

# wite your own tests here
@test Volume.sphere_volume(0) == 0

for r in 1:10
    @test 8*Volume.sphere_volume(r) == Volume.sphere_volume(2*r)
end