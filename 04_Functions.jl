f(x) = 2x + 1

println(f(3))

"Find the area of a cirle of radius `r`"
area_circle(r) = 2π*r^2

println(area_circle(1))

x -> 2x + 1

println(map(f,1:3))

g = x -> 2x + 1

a = "aabb"
b = "acbx"

function hamm_dist(s::String,t)
    assert(length(s) == length(t))
    error = 0
    for (a,b) in zip(s,t)
        error += a != b ? 1 : 0
    end

    return error
end

println(hamm_dist(a,b))
println(hamm_dist("pal","pål"))
println(hamm_dist("pål","pal"))
