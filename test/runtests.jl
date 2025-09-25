using SmallMolecules
using Test
using SafeTestsets


@testset "SmallMolecules.jl" begin
    # Write your tests here.
  @safetestset "Hunds Case (a) tests" begin include("hund_a_tests.jl") end
end
