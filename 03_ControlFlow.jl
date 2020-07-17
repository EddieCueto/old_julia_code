x = 5
println(x > 3 ? "yes" : "no")

println(if x > 3 "yes" else "no" end)

height = 180

y = if height < 170
    println("Short")
elseif height < 190
    println("Average")
else
    println("Tall")
end

i = 1
a = while i<= 10
    println(i)
    i += 1
end

println(typeof(a))

for i in 5:10
    println(i)
end


for i in 5:2:10
    println(i)
end


for i in 5:-1:1
    println(i)
end

println(fieldnames(2:10))

println((2:10).start)

println((2:10).stop)

for w in ["one", "two", "three"]
    println(w)
end

for c in "abcd"
    println(c)
end

for c in "αβγδ"
    println(c)
end

x = 1

println(x ∈ [1,2,3])

println(x ∈ [4,2,3])

for w ∈ ["one", "two", "three"]
    println(w)
end

println([x^2 for x ∈ 1:5])

println([(x,x^2) for x ∈ 1:8])

for (i,x) in enumerate(3:3:20)
    println(i, " ", x)
end

println(collect(enumerate(3:3:20)))
