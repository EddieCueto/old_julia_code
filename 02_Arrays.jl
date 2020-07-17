println([5,7,8])
println(Int8[5,7,8])
println(["one", "two", "three"])
println([true,"two",3,4.0])
println([2,3.0])
println(Array{Int8}(10))
println(ones(Int8,5))
println(zeros(Int8,3))

t = (3,4,1)
println(typeof(t))
println(typeof((true,1.0)))
println(collect(t))

a = [5,6,7,8]
println(a[1])
println(a[3:end])

b = a
b[1] = 0

println(a)

c = a[:]
c[1] = 99
println(a)
println(c)

a[[1,2,4]] = 2
println(a)
pop!(a)
println(a)
push!(a,9)
println(a)
unshift!(a,3) # queue insert
println(a)

prices = [10,20,30]

println(sum(prices))

amounts = [2,2,1]
println(amounts .* prices)
println(amounts .- prices)
