# Autogenerated wrapper script for libjulia_jll for x86_64-apple-darwin-julia_version+1.8.0
export libjulia

using LibUnwind_jll
using LibUV_jll
JLLWrappers.@generate_wrapper_header("libjulia")
JLLWrappers.@declare_library_product(libjulia, "@rpath/libjulia.dylib")
function __init__()
    JLLWrappers.@generate_init_header(LibUnwind_jll, LibUV_jll)
    JLLWrappers.@init_library_product(
        libjulia,
        "lib/libjulia.1.8.dylib",
        nothing,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
