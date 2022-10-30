# Autogenerated wrapper script for libjulia_jll for powerpc64le-linux-gnu-cxx03-julia_version+1.6.3
export libjulia

using LibUV_jll
using LibUnwind_jll
JLLWrappers.@generate_wrapper_header("libjulia")
JLLWrappers.@declare_library_product(libjulia, "libjulia.so.1")
function __init__()
    JLLWrappers.@generate_init_header(LibUV_jll, LibUnwind_jll)
    JLLWrappers.@init_library_product(
        libjulia,
        "lib/libjulia.so",
        nothing,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
