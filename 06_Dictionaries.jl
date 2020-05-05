println(Dict("one" => 1, "two" => 2))

elements = ["one" => 1, "two" => 2]
println(Dict(elements))


elements = [("one",1),("two",2)]
println(Dict(elements))

kees = ["one","two"]
vals = [1,2]

println(Dict(zip(kees,vals)))

d = Dict{String,Int64}()
d["one"] = 1

println(d)

p = "one" => 1
println(p)

k, v = p
println(k)
println(v)


println(fieldnames(p))

println(p.first)
println(p.second)

d = Dict("one" => 1)
println(d["one"])
println(get(d, "three",-1))
println(get(d, "one",-1))

d = Dict("one"=>1,"two"=>2,"three"=>3)
println(haskey(d,"four"))

println(values(d))
println(keys(d))

println(length(d))

delete!(d,"two")

println(d)

d = Dict("one"=>1,"two"=>2,"three"=>3)

for (k,v) in d
    println("value is $v for key $k")
end

for v in values(d)
    println(v)
end

for k in keys(d)
    println(k)
end
