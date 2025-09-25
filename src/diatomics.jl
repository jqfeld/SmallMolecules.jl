struct DiatomicA{SP,LA,SI,ROT,IS <: InversionSymmetry,RS <: ReflectionSymmetry} <: QuantumNumber
  S::SP
  Lambda::LA
  Sigma::SI
  J::ROT
  inversion_symmetry::IS
  reflection_symmetry::RS
end

DiatomicA(S, Lambda, Sigma, J) = DiatomicA(S, Lambda, Sigma, J, nothing, nothing)

Omega(qn::DiatomicA) = qn.Lambda + qn.Sigma
F(qn::DiatomicA) = qn.S - qn.Sigma + 1
inversion_symmetry(qn::DiatomicA) = qn.inversion_symmetry
reflection_symmetry(qn::DiatomicA) = qn.reflection_symmetry

# dummy
ef_parity(qn::DiatomicA) = ParityE()

