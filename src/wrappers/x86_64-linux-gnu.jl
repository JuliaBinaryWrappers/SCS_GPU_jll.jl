# Autogenerated wrapper script for SCS_GPU_jll for x86_64-linux-gnu
export libscsgpuindir

using OpenBLAS_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libscsgpuindir`
const libscsgpuindir_splitpath = ["lib", "libscsgpuindir.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libscsgpuindir_path = ""

# libscsgpuindir-specific global declaration
# This will be filled out by __init__()
libscsgpuindir_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libscsgpuindir = "libscsgpuindir.so"


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
    foreach(p -> append!(PATH_list, p), (OpenBLAS_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (OpenBLAS_jll.LIBPATH_list,))

    global libscsgpuindir_path = normpath(joinpath(artifact_dir, libscsgpuindir_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libscsgpuindir_handle = dlopen(libscsgpuindir_path, RTLD_LAZY | RTLD_DEEPBIND)
    push!(LIBPATH_list, dirname(libscsgpuindir_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()
