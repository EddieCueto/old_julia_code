conn = connect(1234) # Defaults lo localhost

write(conn, "Hello  world!\n")

println(conn, "hello again")


function foo()
    for i in 5:8
        produce(i)
    end
end

t = Task(foo)

consume(t)

