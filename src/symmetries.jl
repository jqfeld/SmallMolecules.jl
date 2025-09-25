# Symmetries of electronic wave functions

abstract type InversionSymmetry end
abstract type ReflectionSymmetry end

struct ElectronicGerade <: InversionSymmetry end
struct ElectronicUngerade <: InversionSymmetry end

struct ElectronicPlus <: ReflectionSymmetry end
struct ElectronicMinus <: ReflectionSymmetry end


struct ParityE end
struct ParityF end
