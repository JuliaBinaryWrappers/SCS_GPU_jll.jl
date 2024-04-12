# Autogenerated wrapper script for SCS_GPU_jll for x86_64-linux-gnu-cuda+11.6
export libscsgpuindir

using OpenBLAS32_jll
using CompilerSupportLibraries_jll
using CUDA_Runtime_jll
JLLWrappers.@generate_wrapper_header("SCS_GPU")
JLLWrappers.@declare_library_product(libscsgpuindir, "libscsgpuindir.so")
function __init__()
    JLLWrappers.@generate_init_header(OpenBLAS32_jll, CompilerSupportLibraries_jll, CUDA_Runtime_jll)
    JLLWrappers.@init_library_product(
        libscsgpuindir,
        "lib/libscsgpuindir.so",
        nothing,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
