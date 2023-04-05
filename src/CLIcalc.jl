module CLIcalc    
    function main()
        println("Hi, what function would you like to use? (mul, sub, add, div, exit)")
        func = readline()
            if (func == "add")
                print("x: ")
                a = readline(keep=false) 
                print("y: ")
                b = readline(keep=false) 
                x = parse(Int64, a)
                y = parse(Int64, b)
                add(x, y) = x + y
                z = add(x, y)
                println("result: $z")
            elseif (func == "sub")
                print("x: ")
                a = readline(keep=false)
                print("y: ")
                b = readline(keep=false)
                x = parse(Int64, a)
                y = parse(Int64, b)
                subtract(x, y) = x - y
                z = subtract(x, y)
                println("result: $z")
            elseif (func == "div")
                println("x: ")
                a = readline(keep=false)
                println("y: ")
                b = readline(keep=false)
                x = parse(Int64, a)
                y = parse(Int64, b)
                divide(x, y) = x / y
                z = divide(x, y)
                println("result: $z")
            elseif (func == "mul")
                print("x: ")
                a = readline(keep=false)
                print("y: ")
                b = readline(keep=false)
                x = parse(Int64, a)
                y = parse(Int64, b)
                mul(x, y) = x * y
                z = mul(x, y)
                println("result: $z")
            elseif (func == "exit")
                Base.exit()
            else
                println("Function not found. Exiting with error code 1")
                Base.exit()
            end
        
    end
        
    function julia_main()
        while true
            main()
        end
        return 0
    end
end