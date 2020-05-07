# Conversion
function foobar(a,b)
    x::Int8 = a
    y::Int8 = b
    x+y
end


println(isa(2,Float64))
println(isa(Int8,Type{Int8}))
println(convert(Int8,4))
Base.convert(::Type{Int8},x::String) = parse(Int8,x)

println(1+2.0+Int8(3))
println(typeof(1+2.0+Int8(3)))
println(promote(1,2.0,Int8(3)))

a = (3,2)

println(+(a...)) # Tuple unpacking notation

# @edit 2 + 4.0 macro to get
