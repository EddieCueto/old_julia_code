elements = readdlm("elements.txt")

#elements = readdlm("elements.txt",'\t')

println(typeof(elements))

println(elements[1, 1])
#println(elements[1])

println(typeof(elements[1,3]))
println(typeof(elements[1,1]))

println(collect(1:9))

m = reshape(collect(1:9),(3,3))
m1 = reshape(1:9,(3,3))

println(m)
println(m1)

writedlm("numbers.txt",m,'\t')
m2 = readdlm("numbers.txt",Int8)

elements = readcsv("elements.csv")

elements, header = readcsv("elements.csv"; header=true)

println(elements)

println(header)

println(elements)
