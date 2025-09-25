using SmallMolecules

@testset "Singlet" begin
end


# struct DiatomicA{SP,LA, SI, ROT, IS, RS} <: QuantumNumber
#   S::SP
#   Lambda::LA
#   Sigma::SI
#   J::ROT
#   inversion_symmetry::IS
#   reflection_symmetry::RS
# end



@testset "Triplet" begin
  @test F(DiatomicA(3, 0, 1, 11, ElectronicUngerade(), ElectronicPlus())) == 3
end

