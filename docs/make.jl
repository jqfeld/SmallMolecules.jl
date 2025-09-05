using SmallMolecules
using Documenter

DocMeta.setdocmeta!(SmallMolecules, :DocTestSetup, :(using SmallMolecules); recursive=true)

makedocs(;
    modules=[SmallMolecules],
    authors="Jan Kuhfeld <jan@kuhfeld.net> and contributors",
    sitename="SmallMolecules.jl",
    format=Documenter.HTML(;
        canonical="https://jqfeld.github.io/SmallMolecules.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/jqfeld/SmallMolecules.jl",
    devbranch="main",
)
