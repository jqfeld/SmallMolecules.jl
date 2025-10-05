
struct State{EN, QN}
  degeneracy::UInt32
  energy::EN
  quantum_numbers::QN 
end

degeneracy(s::S) where S <: State = s.degeneracy

struct Transition{SL, SU, EN, AC}
  initial::SL
  final::SU
  wavenumber::EN # final.energy - initial.energy
  A::AC # Einstein A coefficient in SI units 1/s or Nothing
end


const c0 = 29979245800 # speed of light in cm/s

absorption_crosssection(t::Transition) = 
  0.25 / (t.wavenumber * 100)^2 * degeneracy(t.final)/degeneracy(t.initial) * t.A / (2*π*c0) # units are m^2 (cm^-1=wavenumber) where the dimensions are area * energy 

# function add_crosssection!(trans, states)
#   σs = Float64[]
#   for row in eachrow(trans)
#     g2 = states[states.id.==row.upper_state, :g] |> only
#     g1 = states[states.id.==row.lower_state, :g] |> only
#     A21 = row.A
#     wn = row.wavenumber
#     push!(σs, (1 / 4) * (1 / (wn * 100)^2) * (g2 / g1) * A21 / (2 * π * c0 * 100)) # σ in units m^2 cm^-1
#   end
#   trans.σ = σs
#   trans
# end



