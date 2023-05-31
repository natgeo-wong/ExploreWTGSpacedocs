using Documenter
using Literate
using NCDatasets

using CairoMakie # to avoid capturing precompilation output by Literate
CairoMakie.activate!(type = "svg")

makedocs(;
    doctest  = false,
    format   = Documenter.HTML(;
        prettyurls=get(ENV,"CI","false") == "true",
        canonical="https://natgeo-wong.github.io/ExploreWTGSpace",
        assets=String[],
    ),
    authors  = "Nathanael Wong <natgeo.wong@outlook.com>",
    sitename = "ExploreWTGSpace",
    pages    = [
        "Home" => "index.md",
        # "The WTG Approximation: An Introduction" => [
        #     "What is the WTG Approximation?" => "wtgoverview/intro.md",
        #     "The Different WTG Schemes"      => "wtgoverview/schemes.md",
        # ],
        # "Experimental Setup" => [
        #     "Model Details and Configurations" => "experiment/model.md"
        #     "Radiative-Convective Equilibrium" => "experiment/rce.md"
        #     "Implementing the WTG"             => "experiment/implementing.md"
        # ],
        # "Exploring the WTG Space: Some Results" => [
        #     "A Summary of Key Results"    => "results/key.md",
        #     "Parameter Space Exploration" => "results/key.md",
        # ],
    ],
)

deploydocs(
    repo = "github.com/natgeo-wong/ExploreWTGSpace.git",
    devbranch = "main"
)
