using Weave
using Highlights
using Printf

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
function weaveall()
    for (root, _, files) in walkdir("weave")
        for file in files
            if endswith(file, ".ipynb")
                @info "Weaving Document: $(joinpath(root, file))"
                weave(joinpath(root, file); out_path=:doc, mod=Main, template = "weave.tpl")
            end
        end
    end
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


