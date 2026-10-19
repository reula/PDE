using Weave
using Highlights
using Printf
using Pkg

function hfun_bar(vname)
  val = Meta.parse(vname[1])
  return round(sqrt(val), digits=2)
end

function hfun_m1fill(vname)
  var = vname[1]
  return pagevar("index", var)
end

function lx_baz(com, _)
  # keep this first line
  brace_content = Franklin.content(com.braces[1]) # input string
  # do whatever you want here
  return uppercase(brace_content)
end

"""
    weaveall()

Weave all lecture notes in the `weave` directory. Run from site root.
"""
function weaveall(; instantiate = true)
    Pkg.activate("PDE2025")
    instantiate ? Pkg.instantiate() : nothing
    # Collect the notebooks first and return to the site root before each one:
    # gmsh changes the working directory to that of the mesh file it opens.
    # Each notebook runs in its own new module (mod = nothing), so that names from
    # one notebook (Plots' `plot`) do not clash with another's (Makie's `plot`).
    site = pwd()
    notebooks = [joinpath(site, root, file) for (root, _, files) in walkdir("weave")
                 for file in files if endswith(file, ".ipynb")]
    for nb in notebooks
        cd(site)
        @info "Weaving Document: $(relpath(nb, site))"
        weave(nb; out_path=:doc, mod=nothing, template = "weave.tpl")
    end
    cd(site)
end


"""
    cleanall()

Cleanup all Weave generated subdirectories. Run from site root.
"""
function cleanall()
    for (root, dirs, _) in walkdir("weave")
        for dir in dirs
            if startswith(dir, "jl_")
                @info "Removing Directory: $(joinpath(root, dir))"
                rm(joinpath(root, dir); recursive=true, force=true)
            end
        end
    end
end



function latex_to_html_all()
    for (root, _, files) in walkdir("latex")
        for file in files
            if endswith(file, ".tex") && !occursin("_wrap", file) && !occursin("extdef", file)
                name = splitext(file)[1]
                wrap_path = joinpath(root, "$(name)_wrap.tex")
                html_path = joinpath(root, "$(name).html")
                xml_path = joinpath(root, "$(name).xml")

                # Crear archivo wrapper
                open(wrap_path, "w") do io
                    println(io, raw"""
\documentclass{book}
\usepackage{amsmath,amssymb,babel}
\usepackage[utf8]{inputenc}

\let\addtolength\relax
\let\DeclareFontEncoding\relax
\let\thesubsection\relax

\input{../extdef_libro}

\begin{document}
\input{$(name)}
\end{document}
""")
                end

                @info "Converting LaTeX file to HTML" file
                cd(wrap_dir) do
                    run(`latexml --dest=$(basename(xml_path)) $(basename(wrap_path))`)
end

                run(`latexmlpost --format=html5 --destination=$html_path --css=../../_css/latexml.css $xml_path`)
            end
        end
    end
end


