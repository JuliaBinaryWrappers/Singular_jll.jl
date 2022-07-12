# Autogenerated wrapper script for Singular_jll for aarch64-apple-darwin
export Singular, libfactory, libomalloc, libparse, libpolys, libsingular, libsingular_resources

using cddlib_jll
using FLINT_jll
using GMP_jll
using MPFR_jll
JLLWrappers.@generate_wrapper_header("Singular")
JLLWrappers.@declare_library_product(libfactory, "@rpath/libfactory-4.3.1.dylib")
JLLWrappers.@declare_library_product(libomalloc, "@rpath/libomalloc-0.9.6.dylib")
JLLWrappers.@declare_library_product(libpolys, "@rpath/libpolys-4.3.1.dylib")
JLLWrappers.@declare_library_product(libsingular, "@rpath/libSingular-4.3.1.dylib")
JLLWrappers.@declare_library_product(libsingular_resources, "@rpath/libsingular_resources-4.3.1.dylib")
JLLWrappers.@declare_executable_product(Singular)
JLLWrappers.@declare_executable_product(libparse)
function __init__()
    JLLWrappers.@generate_init_header(cddlib_jll, FLINT_jll, GMP_jll, MPFR_jll)
    JLLWrappers.@init_library_product(
        libfactory,
        "lib/libfactory.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libomalloc,
        "lib/libomalloc.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libpolys,
        "lib/libpolys.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libsingular,
        "lib/libSingular.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libsingular_resources,
        "lib/libsingular_resources.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        Singular,
        "bin/Singular",
    )

    JLLWrappers.@init_executable_product(
        libparse,
        "bin/libparse",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
