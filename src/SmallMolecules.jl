module SmallMolecules

abstract type QuantumNumber end

include("symmetries.jl")
export ElectronicPlus, ElectronicMinus, ElectronicGerade, ElectronicUngerade

include("diatomics.jl")
export DiatomicA, F, Omega, inversion_symmetry, reflection_symmetry

include("states.jl")
export State


end
