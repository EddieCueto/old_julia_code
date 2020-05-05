x = 3
println(typeof(x))

x = "hello"
println(typeof(x))

øl = "beer"
θ = 44

δαω = "hi"

println(δαω)
# π = 3
println(π)


function myadd(x,y)
    a::Int8 = 0
    b::Int8 = 0
    a = x
    b = y
    return a + b
end


function valuemix()
    a::Int16 = 'A'
    b::Int16 = true
    c::Vector{Int8} = []
    c = [2,4,6]
    (a,b,c)
end


function mixup(args)
    a::Int16 = 'A'::Int16
end

for i in 1:5
    local y = i
end

const k = 1
v = 1
