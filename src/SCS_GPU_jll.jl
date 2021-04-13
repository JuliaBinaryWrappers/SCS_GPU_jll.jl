# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule SCS_GPU_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("SCS_GPU")
JLLWrappers.@generate_main_file("SCS_GPU", UUID("af6e375f-46ec-5fa0-b791-491b0dfa44a4"))
end  # module SCS_GPU_jll
