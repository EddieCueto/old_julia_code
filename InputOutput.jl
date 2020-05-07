s = readstring("elements.txt")

println(s)

stream = open("elements.txt","r")

line = readline(stream)

println(line)

println(eof(stream))

println(position(stream))

println(read(stream, Char))

println(position(stream))

println(readline(stream))
println(read(stream, Int8))

println(readstring(stream))

myread(s::IOStream) = read(s,Char)

println(open(myread,"elements.txt"))

open("elements.txt") do stream
    for line in eachline(stream)
        println(line)
    end
end

function f(stream)
    for line in eachline(stream)
        println(line)
    end
end


println(open(f,"elements.txt"))

write("foobar.txt", "Hello world")

open("alpha.txt", "w") do io
    for ch in 'A':'Z'
        write(io, ch)
    end
end
