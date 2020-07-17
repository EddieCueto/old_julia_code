println(typeof(8))

a = typeof(8)

println(typeof(a))

b = supertype(a)

println(b)

b = supertype(UInt64)
println(b)

c = supertype(b)
println(c)

println(subtypes(c))
a = typeof(4)

for i in 1:10
    a =supertype(a)
    println(a)
end

println(subtypes(Int64))

println("A"^2)

function showtypetree(T, level=0)
    println("\t" ^ level, T)
    for t in subtypes(T)
        if t != Any
            showtypetree(t, level+1)
        end
    end
end

println(fieldnames(5:2:8))
println(typeof(5:2:8))

d = Dict("one" => 1, "two" => 2, "three" => 3)
println(typeof(d))

println(fieldnames(d))

println(d.count)
println(d.vals)
println(d.keys)
