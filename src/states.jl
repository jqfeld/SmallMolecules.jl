abstract type QuantumNumber end


struct State{EN, QN <: QuantumNumber}
  degeneracy::UInt32
  energy::EN
  quantum_numbers::QN 
end

struct Transition{SL, SU, EN, AC}
  initial::SL
  final::SU
  energy::EN # final.energy - initial.energy
  A::AC # Einstein A coefficient or Nothing
end


