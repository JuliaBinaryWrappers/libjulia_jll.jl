# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule libjulia_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("libjulia")
JLLWrappers.@generate_main_file("libjulia", UUID("5ad3ddd2-0711-543a-b040-befd59781bbf"))
end  # module libjulia_jll
