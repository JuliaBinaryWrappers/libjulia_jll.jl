# Autogenerated wrapper script for libjulia_jll for aarch64-linux-gnu-cxx03
export libjulia

using PCRE2_jll
using OpenLibm_jll
using dSFMT_jll
using SuiteSparse_jll
using LibUV_jll
using utf8proc_jll
using MbedTLS_jll
using LibSSH2_jll
using LibCURL_jll
using Zlib_jll
using p7zip_jll
using OpenBLAS_jll
using libLLVM_jll
using MPFR_jll
using LibGit2_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libjulia`
const libjulia_splitpath = ["lib", "libjulia.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libjulia_path = ""

# libjulia-specific global declaration
# This will be filled out by __init__()
libjulia_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libjulia = "libjulia.so.1"


# Inform that the wrapper is available for this platform
wrapper_available = true

"""
Open all libraries
"""
function __init__()
    # This either calls `@artifact_str()`, or returns a constant string if we're overridden.
    global artifact_dir = find_artifact_dir()

    global PATH_list, LIBPATH_list
    # Initialize PATH and LIBPATH environment variable listings
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (PCRE2_jll.PATH_list, OpenLibm_jll.PATH_list, dSFMT_jll.PATH_list, SuiteSparse_jll.PATH_list, LibUV_jll.PATH_list, utf8proc_jll.PATH_list, MbedTLS_jll.PATH_list, LibSSH2_jll.PATH_list, LibCURL_jll.PATH_list, Zlib_jll.PATH_list, p7zip_jll.PATH_list, OpenBLAS_jll.PATH_list, libLLVM_jll.PATH_list, MPFR_jll.PATH_list, LibGit2_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (PCRE2_jll.LIBPATH_list, OpenLibm_jll.LIBPATH_list, dSFMT_jll.LIBPATH_list, SuiteSparse_jll.LIBPATH_list, LibUV_jll.LIBPATH_list, utf8proc_jll.LIBPATH_list, MbedTLS_jll.LIBPATH_list, LibSSH2_jll.LIBPATH_list, LibCURL_jll.LIBPATH_list, Zlib_jll.LIBPATH_list, p7zip_jll.LIBPATH_list, OpenBLAS_jll.LIBPATH_list, libLLVM_jll.LIBPATH_list, MPFR_jll.LIBPATH_list, LibGit2_jll.LIBPATH_list,))

    global libjulia_path = normpath(joinpath(artifact_dir, libjulia_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libjulia_handle = dlopen(libjulia_path, RTLD_LAZY | RTLD_DEEPBIND)
    push!(LIBPATH_list, dirname(libjulia_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()
