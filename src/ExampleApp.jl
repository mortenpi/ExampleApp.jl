module ExampleApp

function run(args)
    @info "Running ExampleApp" args
    
    for (i, arg) in enumerate(args)
        @info "Argument $i" arg
        if isfile(arg)
            println(read(arg, String))
        end
    end
end

end
