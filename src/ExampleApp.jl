module ExampleApp
using QuadGK

function run()
    @info "Running ExampleApp"
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

function _show_env()
    envs = (
        "$k: $v"
        for (k, v) in ENV
        if startswith(k, "JULIA")
    )
    env = join(envs, '\n')
    @info "JULIA* environment variables:\n$(env)"
end

end
