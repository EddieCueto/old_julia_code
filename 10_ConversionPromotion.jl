function foobar(a,b)
    x::Int8 = a
    y::Int8 = b
    return x+y      
end

println(foobar(1,2))

println(typeof(foobar(1,2)))

#println(foobar("1","2"))

println(Int8(4))

#println(Int8("4"))

println(isa(2,Int64))

println(isa(2,Float64))

println(isa(2,Integer))

println(isa(Int8,DataType))

println(isa(Int8,Type{Int8}))

println(isa(Int8,Type{Int16}))

println(convert(Int8,4))

println(typeof(convert(Int8,4)))

# convert(::Type{Int8}, x::Int64) = 

Base.convert(::Type{Int8}, x::String) = parse(Int8,x)

println(foobar("1","2"))

println(Int8("4"))

println(1+2.0+Int8(3))

println(typeof(1+2.0+Int8(3)))

println(promote(1,2.0,Int8(3)))

a = promote(1,2.0,Int8(3))

println(+(a...)) # ... tuple unpacker

b = (3,2)

println(+(b...))

println(promote(Int8(2),Int16(4)))

c = promote(Int8(2),Int16(4))

println(typeof(c))

@edit 2+4
