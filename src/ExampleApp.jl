module ExampleApp
using QuadGK

function run(args)
    @info "Running ExampleApp" args
    @info "∫exp(-x²)" quadgk(x -> exp(-x^2), -Inf, Inf)
end

function _show_args()
    for (i, arg) in enumerate(ARGS)
        @info "Argument $i: $arg"
        if isfile(arg)
            @info "'$arg' is a file\n$(read(arg, String))"
        end
    end
end

end
