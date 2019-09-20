__precompile__()

module GWSC

using DelimitedFiles:readdlm
using Interpolations
using Unitful, UnitfulAstro
using PyPlot
using PhysicalConstants.CODATA2014: c_0
using QuadGK
using Roots

# source path
const src_path = @__DIR__

# location of sensitivity files
const sensitivity_path = normpath(joinpath(src_path, "sensitivity_data"))

export
    YEAR,
    DAY,
    c0,
    H0,
    Float,
    Detector,
    LIGO,
    LISA,
    PTA,
    plotΩPI,
    plotCharacteristicStrain,
    plotSpectralDensity,
    ΩPI,
    SNR,
    backup

include("utils.jl")
include("LIGO.jl")
include("LISA.jl")
include("PTA.jl")
include("SNR.jl")
include("plot.jl")

end # module