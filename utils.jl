using Weave
using Highlights

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

Weave all lecture notes in the `_weave` directory. Run from site root.
"""
function weaveall()
    for (root, _, files) in walkdir("_weave")
        for file in files
            if endswith(file, ".ipynb")
                @info "Weaving Document: $(joinpath(root, file))"
                weave("_weave/homework04/Fourier.ipynb";
                doctype="md2html",
                template="weave.tpl",
                out_path=:doc,
                mod=Main,
                highlight_theme=Highlights.Themes.PygmentsTheme,
                args=Dict("mathjax" => true))
            end
        end
    end
end


"""
    cleanall()

Cleanup all Weave generated subdirectories. Run from site root.
"""
function cleanall()
    for (root, dirs, _) in walkdir("_weave")
        for dir in dirs
            if startswith(dir, "jl_")
                @info "Removing Directory: $(joinpath(root, dir))"
                rm(joinpath(root, dir); recursive=true, force=true)
            end
        end
    end
end
