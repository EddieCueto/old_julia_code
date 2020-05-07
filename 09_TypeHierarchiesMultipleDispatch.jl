println(typeof(3))

telltype(x) = "Unknown type"

println(telltype(2))

telltype(x::Integer) = "Integer type"

telltype(::AbstractFloat) = "Floatingpoint type"

println(telltype("a"))

println(telltype(2))

println(telltype(2.0))

telltype(::Int64) = "64 bit integer"

println(telltype(1))

countargs(a) = "one"

countargs(a,b) = "two"

countargs(a,b,c) = "three"

println(countargs(1))

println(countargs(1,2))

println(countargs(1,2,3))

println(countargs("abc",2))

foo(a,b) = "Two variables"

foo(a::Integer,b::Integer) = "Two integers"

foo(a::Integer,b::AbstractFloat) = "An integer and a float"

foo(a::AbstractFloat,b::Integer) = "A float and a integer"

println(foo('a',1))

println(foo(2,1))

println(foo(2.0,1))

println(foo(2,1.1))