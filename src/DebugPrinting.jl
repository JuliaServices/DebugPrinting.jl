module DebugPrinting

export setdebug!, withdebug, getdebug

const DEBUG_LEVEL = Dict{Symbol, Int}()

getdebug(mod::Symbol) = DEBUG_LEVEL[mod]
getdebug(mod::Module) = getdebug(nameof(mod))

function setdebug!(mod::Symbol, level::Integer)
    DEBUG_LEVEL[mod] = Int(level)
    return
end

setdebug!(mod::Module, level::Integer) = setdebug!(nameof(mod), level)

function withdebug(f, mod, level)
    lvl = DEBUG_LEVEL[]
    try
        setdebug!(mod, level)
        f()
    finally
        setdebug!(mod, lvl)
    end
end

macro debug(level, msg)
    esc(quote
        if getdebug(__module__) >= $level
            println(string("DEBUG: ", $(QuoteNode(__source__.file)), ":", $(QuoteNode(__source__.line)), " ", $msg))
        end
    end)
end

end # module
