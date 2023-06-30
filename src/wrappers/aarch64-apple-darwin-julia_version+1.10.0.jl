# Autogenerated wrapper script for libjulia_jll for aarch64-apple-darwin-julia_version+1.10.0
export libjulia, libjulia_debug

using LibUV_jll
using LLVMLibUnwind_jll
JLLWrappers.@generate_wrapper_header("libjulia")
JLLWrappers.@declare_library_product(libjulia, "@rpath/libjulia.1.10.dylib")
JLLWrappers.@declare_library_product(libjulia_debug, "@rpath/libjulia-debug.1.10.dylib")
function __init__()
    JLLWrappers.@generate_init_header(LibUV_jll, LLVMLibUnwind_jll)
    JLLWrappers.@init_library_product(
        libjulia,
        "lib/libjulia.1.10.0.dylib",
        nothing,
    )

    JLLWrappers.@init_library_product(
        libjulia_debug,
        "lib/libjulia-debug.1.10.0.dylib",
        nothing,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
