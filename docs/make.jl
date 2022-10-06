using Mongolia
using Documenter

DocMeta.setdocmeta!(Mongolia, :DocTestSetup, :(using Mongolia); recursive=true)

makedocs(;
    modules=[Mongolia],
    authors="Mark Mendel <mmendel@meinergy.com> and contributors",
    repo="https://github.com/mgm7734/Mongolia.jl/blob/{commit}{path}#{line}",
    sitename="Mongolia.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://mgm7734.github.io/Mongolia.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/mgm7734/Mongolia.jl",
    devbranch="main",
)
