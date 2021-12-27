# Autogenerated wrapper script for libjulia_jll for aarch64-linux-gnu-cxx11-julia_version+1.6.3
export libjulia

using LibUnwind_jll
using LibUV_jll
using LibOSXUnwind_jll
using libLLVM_jll
JLLWrappers.@generate_wrapper_header("libjulia")
JLLWrappers.@declare_library_product(libjulia, "libjulia.so.1")
function __init__()
    JLLWrappers.@generate_init_header(LibUnwind_jll, LibUV_jll, LibOSXUnwind_jll, libLLVM_jll)
    JLLWrappers.@init_library_product(
        libjulia,
        "lib/libjulia.so",
        nothing,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()