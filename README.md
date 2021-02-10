
# DebugPrinting.jl

[![CI](https://github.com/JuliaServices/DebugPrinting.jl/workflows/CI/badge.svg)](https://github.com/JuliaServices/DebugPrinting.jl/actions?query=workflow%3ACI)
[![codecov](https://codecov.io/gh/JuliaServices/DebugPrinting.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/JuliaServices/DebugPrinting.jl)

<!-- [![deps](https://juliahub.com/docs/DebugPrinting/deps.svg)](https://juliahub.com/ui/Packages/DebugPrinting/QnF3w?t=2)
[![version](https://juliahub.com/docs/DebugPrinting/version.svg)](https://juliahub.com/ui/Packages/DebugPrinting/QnF3w)
[![pkgeval](https://juliahub.com/docs/DebugPrinting/pkgeval.svg)](https://juliahub.com/ui/Packages/DebugPrinting/QnF3w) -->

### Documentation

```julia
# sprinkle debug statements throughout your code
@debug 1 "cool message that will only display when debug level is set to >= 1"

# set debug level for a specific module
setdebug!(MyPkg, 1)

# set debug level while running run_stuff(), then reset back to what it was
withdebug(MyPkg, 1) do
    run_stuff()
end
```
