# Autogenerated wrapper script for Singular_jll for aarch64-linux-gnu-cxx03
export Singular, libfactory, libomalloc, libparse, libpolys, libsingular, libsingular_resources

using cddlib_jll
using FLINT_jll
using GMP_jll
using MPFR_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `Singular`
const Singular_splitpath = ["bin", "Singular"]

# This will be filled out by __init__() for all products, as it must be done at runtime
Singular_path = ""

# Singular-specific global declaration
function Singular(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        LIBPATH_base = get(ENV, LIBPATH_env, expanduser(LIBPATH_default))
        if !isempty(LIBPATH_base)
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', LIBPATH_base)
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(Singular_path)
    end
end


# Relative path to `libfactory`
const libfactory_splitpath = ["lib", "libfactory.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libfactory_path = ""

# libfactory-specific global declaration
# This will be filled out by __init__()
libfactory_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libfactory = "libfactory-4.1.3.so"


# Relative path to `libomalloc`
const libomalloc_splitpath = ["lib", "libomalloc.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libomalloc_path = ""

# libomalloc-specific global declaration
# This will be filled out by __init__()
libomalloc_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libomalloc = "libomalloc-0.9.6.so"


# Relative path to `libparse`
const libparse_splitpath = ["bin", "libparse"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libparse_path = ""

# libparse-specific global declaration
function libparse(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        LIBPATH_base = get(ENV, LIBPATH_env, expanduser(LIBPATH_default))
        if !isempty(LIBPATH_base)
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', LIBPATH_base)
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(libparse_path)
    end
end


# Relative path to `libpolys`
const libpolys_splitpath = ["lib", "libpolys.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libpolys_path = ""

# libpolys-specific global declaration
# This will be filled out by __init__()
libpolys_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libpolys = "libpolys-4.1.3.so"


# Relative path to `libsingular`
const libsingular_splitpath = ["lib", "libSingular.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libsingular_path = ""

# libsingular-specific global declaration
# This will be filled out by __init__()
libsingular_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libsingular = "libSingular-4.1.3.so"


# Relative path to `libsingular_resources`
const libsingular_resources_splitpath = ["lib", "libsingular_resources.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libsingular_resources_path = ""

# libsingular_resources-specific global declaration
# This will be filled out by __init__()
libsingular_resources_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libsingular_resources = "libsingular_resources-4.1.3.so"


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
    foreach(p -> append!(PATH_list, p), (cddlib_jll.PATH_list, FLINT_jll.PATH_list, GMP_jll.PATH_list, MPFR_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (cddlib_jll.LIBPATH_list, FLINT_jll.LIBPATH_list, GMP_jll.LIBPATH_list, MPFR_jll.LIBPATH_list,))

    global Singular_path = normpath(joinpath(artifact_dir, Singular_splitpath...))

    push!(PATH_list, dirname(Singular_path))
    global libfactory_path = normpath(joinpath(artifact_dir, libfactory_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libfactory_handle = dlopen(libfactory_path, RTLD_LAZY | RTLD_DEEPBIND)
    push!(LIBPATH_list, dirname(libfactory_path))

    global libomalloc_path = normpath(joinpath(artifact_dir, libomalloc_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libomalloc_handle = dlopen(libomalloc_path, RTLD_LAZY | RTLD_DEEPBIND)
    push!(LIBPATH_list, dirname(libomalloc_path))

    global libparse_path = normpath(joinpath(artifact_dir, libparse_splitpath...))

    push!(PATH_list, dirname(libparse_path))
    global libpolys_path = normpath(joinpath(artifact_dir, libpolys_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libpolys_handle = dlopen(libpolys_path, RTLD_LAZY | RTLD_DEEPBIND)
    push!(LIBPATH_list, dirname(libpolys_path))

    global libsingular_path = normpath(joinpath(artifact_dir, libsingular_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libsingular_handle = dlopen(libsingular_path, RTLD_LAZY | RTLD_DEEPBIND)
    push!(LIBPATH_list, dirname(libsingular_path))

    global libsingular_resources_path = normpath(joinpath(artifact_dir, libsingular_resources_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libsingular_resources_handle = dlopen(libsingular_resources_path, RTLD_LAZY | RTLD_DEEPBIND)
    push!(LIBPATH_list, dirname(libsingular_resources_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()
