# Autogenerated wrapper script for libjulia_jll for aarch64-linux-musl-julia_version+1.13.0
export libjulia, libjulia_debug

using LibUV_jll
using LibUnwind_jll
JLLWrappers.@generate_wrapper_header("libjulia")
JLLWrappers.@declare_library_product(libjulia, "libjulia.so.1.13")
JLLWrappers.@declare_library_product(libjulia_debug, "libjulia-debug.so.1.13")
function __init__()
    JLLWrappers.@generate_init_header(LibUV_jll, LibUnwind_jll)
    JLLWrappers.@init_library_product(
        libjulia,
        "lib/libjulia.so",
        nothing,
    )

    JLLWrappers.@init_library_product(
        libjulia_debug,
        "lib/libjulia-debug.so",
        nothing,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
