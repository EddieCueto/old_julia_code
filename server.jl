@async begin
    server = listen(1234)
    while true
        conn = accept(server)
        println("Client connected")
        @async while isopen(conn)
            line = readline(conn)
            print("From client: $line")
            write(conn,uppercase(line))
        end
    end
end
