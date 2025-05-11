using Franklin
using Weave

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
function weaveall(; rootdir="_weave", outdir="docs")
    for (root, _, files) in walkdir(rootdir)
        for file in files
            if endswith(file, ".jmd")
                input_path = joinpath(root, file)

                # Output file name, preserving relative path
                relative_dir = relpath(root, rootdir)
                output_dir = joinpath(outdir, relative_dir)
                mkpath(output_dir)

                @info "Weaving: $input_path → $output_dir"
                weave(input_path;
                      doctype="pandoc",
                      template="weave.tpl",
                      out_path=output_dir,
                      mod=Main)
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
