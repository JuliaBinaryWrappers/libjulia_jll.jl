# Autogenerated wrapper script for libjulia_jll for x86_64-w64-mingw32-cxx11-julia_version+1.7.0
export libjulia

using LibUnwind_jll
JLLWrappers.@generate_wrapper_header("libjulia")
JLLWrappers.@declare_library_product(libjulia, "libjulia.dll")
function __init__()
    JLLWrappers.@generate_init_header(LibUnwind_jll)
    JLLWrappers.@init_library_product(
        libjulia,
        "bin\\libjulia.dll",
        nothing,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()