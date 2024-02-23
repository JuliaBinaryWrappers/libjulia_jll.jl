# Autogenerated wrapper script for libjulia_jll for i686-w64-mingw32-julia_version+1.12.0
export libjulia, libjulia_debug

using LibUV_jll
using LibUnwind_jll
JLLWrappers.@generate_wrapper_header("libjulia")
JLLWrappers.@declare_library_product(libjulia, "libjulia.dll")
JLLWrappers.@declare_library_product(libjulia_debug, "libjulia-debug.dll")
function __init__()
    JLLWrappers.@generate_init_header(LibUV_jll, LibUnwind_jll)
    JLLWrappers.@init_library_product(
        libjulia,
        "bin\\libjulia.dll",
        nothing,
    )

    JLLWrappers.@init_library_product(
        libjulia_debug,
        "bin\\libjulia-debug.dll",
        nothing,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
